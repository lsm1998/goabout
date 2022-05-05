package main

import (
	"github.com/hajimehoshi/ebiten/v2"
	"github.com/hajimehoshi/ebiten/v2/ebitenutil"
	_ "image/jpeg"
	"log"
)

var img *ebiten.Image

func init() {
	var err error
	img, _, err = ebitenutil.NewImageFromFile("1.JPG")
	if err != nil {
		log.Fatal(err)
	}
}

type Game struct{}

func (g *Game) Update() error {
	return nil
}

func (g *Game) Draw(screen *ebiten.Image) {
	op := &ebiten.DrawImageOptions{}
	// 平移
	op.GeoM.Translate(0, 0)
	// 缩放
	op.GeoM.Scale(1, 1)
	screen.DrawImage(img, op)
}

func (g *Game) Layout(outsideWidth, outsideHeight int) (screenWidth, screenHeight int) {
	return 666, 940
}

func main() {
	ebiten.SetWindowSize(666, 940)
	ebiten.SetWindowTitle("Geometry Matrix")
	if err := ebiten.RunGame(&Game{}); err != nil {
		log.Fatal(err)
	}
}
