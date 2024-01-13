package jsonx

import (
	"fmt"
	"strings"
	"testing"
)

func TestJSONParser_Parse(t *testing.T) {
	jsonStr := `{"name": "John", "age": 30, "city": "New York", "isStudent": false, "grades": [90, 85, 88]}`
	reader := strings.NewReader(jsonStr)

	parser := NewJSONParser(reader)
	result, err := parser.Parse()
	if err != nil {
		fmt.Println("Error:", err)
		return
	}

	fmt.Println("Parsed JSON:", result)
}
