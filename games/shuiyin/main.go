package main

func main() {
	dis := "/Users/liushiming/IdeaProjects/goabout/games/shuiyin"
	str := FontInfo{18, "努力向上", TopLeft, 20, 20, 255, 255, 0, 255}
	arr := make([]FontInfo, 0)
	arr = append(arr, str)
	str2 := FontInfo{Size: 24, Message: "努力向上，涨工资", Position: TopLeft, Dx: 20, Dy: 40, R: 255, G: 255, B: 0, A: 255}
	arr = append(arr, str2)
	//加水印图片路径
	src := "/Users/liushiming/IdeaProjects/goabout/games/shuiyin/1.JPG"
	fileName := "1"
	w := new(Water)
	w.Pattern = "2006/01/02"
	err := w.New(src, dis, fileName, arr)
	if err != nil {
		panic(err)
	}
}
