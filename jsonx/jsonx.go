package jsonx

import (
	"errors"
	"fmt"
	"io"
	"strings"
	"unicode"
)

// JSONToken 表示 JSON 解析中的令牌类型
type JSONToken int

const (
	TokenError JSONToken = iota
	TokenEOF
	TokenString
	TokenNumber
	TokenTrue
	TokenFalse
	TokenNull
	TokenObjectStart
	TokenObjectEnd
	TokenArrayStart
	TokenArrayEnd
	TokenColon
	TokenComma
)

// JSONValue 表示 JSON 解析后的值
type JSONValue struct {
	Type  JSONToken
	Value interface{}
}

// JSONParser 是 JSON 解析器
type JSONParser struct {
	lexer *JSONLexer
}

// NewJSONParser 创建一个新的 JSON 解析器
func NewJSONParser(reader io.Reader) *JSONParser {
	return &JSONParser{
		lexer: NewJSONLexer(reader),
	}
}

// Parse 解析 JSON
func (p *JSONParser) Parse() (JSONValue, error) {
	return p.parseValue()
}

// parseValue 解析 JSON 值
func (p *JSONParser) parseValue() (JSONValue, error) {
	token, err := p.lexer.nextToken()
	if err != nil {
		return JSONValue{}, err
	}

	switch token.Type {
	case TokenString, TokenNumber, TokenTrue, TokenFalse, TokenNull:
		return JSONValue{Type: token.Type, Value: token.Value}, nil
	case TokenObjectStart:
		return p.parseObject()
	case TokenArrayStart:
		return p.parseArray()
	default:
		return JSONValue{}, errors.New("unexpected token")
	}
}

// parseObject 解析 JSON 对象
func (p *JSONParser) parseObject() (JSONValue, error) {
	obj := make(map[string]JSONValue)

	for {
		token, err := p.lexer.nextToken()
		if err != nil {
			return JSONValue{}, err
		}

		if token.Type == TokenObjectEnd {
			return JSONValue{Type: TokenObjectStart, Value: obj}, nil
		}

		if token.Type != TokenString {
			return JSONValue{}, errors.New("object key must be a string")
		}

		key := token.Value.(string)

		token, err = p.lexer.nextToken()
		if err != nil {
			return JSONValue{}, err
		}

		if token.Type != TokenColon {
			return JSONValue{}, errors.New("expected colon after object key")
		}

		value, err := p.parseValue()
		if err != nil {
			return JSONValue{}, err
		}

		obj[key] = value

		token, err = p.lexer.nextToken()
		if err != nil {
			return JSONValue{}, err
		}

		if token.Type == TokenObjectEnd {
			return JSONValue{Type: TokenObjectStart, Value: obj}, nil
		}

		if token.Type != TokenComma {
			return JSONValue{}, errors.New("expected comma or object end")
		}
	}
}

// parseArray 解析 JSON 数组
func (p *JSONParser) parseArray() (JSONValue, error) {
	var arr []JSONValue

	for {
		token, err := p.lexer.nextToken()
		if err != nil {
			return JSONValue{}, err
		}

		if token.Type == TokenArrayEnd {
			return JSONValue{Type: TokenArrayStart, Value: arr}, nil
		}

		p.lexer.unreadToken()

		value, err := p.parseValue()
		if err != nil {
			return JSONValue{}, err
		}

		arr = append(arr, value)

		token, err = p.lexer.nextToken()
		if err != nil {
			return JSONValue{}, err
		}

		if token.Type == TokenArrayEnd {
			return JSONValue{Type: TokenArrayStart, Value: arr}, nil
		}

		if token.Type != TokenComma {
			return JSONValue{}, errors.New("expected comma or array end")
		}
	}
}

// JSONLexer 是 JSON 词法分析器
type JSONLexer struct {
	reader     io.Reader
	buffer     strings.Builder
	unreadRune rune
}

// NewJSONLexer 创建一个新的 JSON 词法分析器
func NewJSONLexer(reader io.Reader) *JSONLexer {
	return &JSONLexer{
		reader: reader,
	}
}

// nextToken 读取下一个 JSON 令牌
func (l *JSONLexer) nextToken() (JSONValue, error) {
	for {
		r, err := l.readRune()
		if err != nil {
			if err == io.EOF {
				return JSONValue{Type: TokenEOF}, nil
			}
			return JSONValue{}, err
		}

		switch {
		case unicode.IsSpace(r):
			// Skip whitespace
		case r == '"':
			return l.readString()
		case r == '{':
			return JSONValue{Type: TokenObjectStart}, nil
		case r == '}':
			return JSONValue{Type: TokenObjectEnd}, nil
		case r == '[':
			return JSONValue{Type: TokenArrayStart}, nil
		case r == ']':
			return JSONValue{Type: TokenArrayEnd}, nil
		case r == ':':
			return JSONValue{Type: TokenColon}, nil
		case r == ',':
			return JSONValue{Type: TokenComma}, nil
		case (r >= '0' && r <= '9') || r == '-':
			l.unreadRune = r
			return l.readNumber()
		default:
			return JSONValue{}, fmt.Errorf("Unexpected character: %c", r)
		}
	}
}

// readRune 读取一个 Unicode 字符
func (l *JSONLexer) readRune() (rune, error) {
	if l.unreadRune != 0 {
		r := l.unreadRune
		l.unreadRune = 0
		return r, nil
	}

	var buf [1]byte
	_, err := l.reader.Read(buf[:])
	if err != nil {
		return 0, err
	}

	return rune(buf[0]), nil
}

// unreadToken 将上一个读取的字符放回
func (l *JSONLexer) unreadToken() {
	l.unreadRune = rune(l.buffer.String()[l.buffer.Len()-1])
	l.buffer.Reset()
}

// readString 读取 JSON 字符串
func (l *JSONLexer) readString() (JSONValue, error) {
	for {
		r, err := l.readRune()
		if err != nil {
			return JSONValue{}, err
		}

		if r == '"' {
			return JSONValue{Type: TokenString, Value: l.buffer.String()}, nil
		}

		l.buffer.WriteRune(r)
	}
}

// readNumber 读取 JSON 数字
func (l *JSONLexer) readNumber() (JSONValue, error) {
	for {
		r, err := l.readRune()
		if err != nil {
			if err == io.EOF {
				return JSONValue{Type: TokenNumber, Value: l.buffer.String()}, nil
			}
			return JSONValue{}, err
		}

		if !unicode.IsDigit(r) && r != '.' && r != 'e' && r != 'E' && r != '-' {
			l.unreadToken()
			return JSONValue{Type: TokenNumber, Value: l.buffer.String()}, nil
		}

		l.buffer.WriteRune(r)
	}
}
