package main

import (
	"fmt"
	_ "image/jpeg"
	"log"

	"github.com/hajimehoshi/ebiten/v2"
	"github.com/hajimehoshi/ebiten/v2/ebitenutil"
)

type Game struct {
	highDPIImageCh chan *ebiten.Image
	highDPIImage   *ebiten.Image
}

func NewGame() *Game {
	g := &Game{
		highDPIImageCh: make(chan *ebiten.Image),
	}
	const url = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.doubanio.com%2Fview%2Fnote%2Fl%2Fpublic%2Fp82460877.jpg"

	// Load the image asynchronously.
	go func() {
		img, err := ebitenutil.NewImageFromURL(url)
		if err != nil {
			log.Fatal(err)
		}
		g.highDPIImageCh <- img
		close(g.highDPIImageCh)
	}()

	return g
}

func (g *Game) Update() error {
	// TODO: DeviceScaleFactor() might return different values for different monitors.
	// Add a mode to adjust the screen size along with the current device scale (#705).
	// Now this example uses the device scale initialized at the beginning of this application.

	if g.highDPIImage != nil {
		return nil
	}

	// Use select and 'default' clause for non-blocking receiving.
	select {
	case img := <-g.highDPIImageCh:
		g.highDPIImage = img
	default:
	}

	return nil
}

func (g *Game) Draw(screen *ebiten.Image) {
	if g.highDPIImage == nil {
		ebitenutil.DebugPrint(screen, "Loading the image...")
		return
	}

	sw, sh := screen.Size()

	w, h := g.highDPIImage.Size()
	op := &ebiten.DrawImageOptions{}

	// Move the images's center to the upper left corner.
	op.GeoM.Translate(float64(-w)/2, float64(-h)/2)

	// The image is just too big. Adjust the scale.
	op.GeoM.Scale(0.25, 0.25)

	// Scale the image by the device ratio so that the rendering result can be same
	// on various (different-DPI) environments.
	scale := ebiten.DeviceScaleFactor()
	op.GeoM.Scale(scale, scale)

	// Move the image's center to the screen's center.
	op.GeoM.Translate(float64(sw)/2, float64(sh)/2)

	op.Filter = ebiten.FilterLinear
	screen.DrawImage(g.highDPIImage, op)

	ebitenutil.DebugPrint(screen, fmt.Sprintf("(Init) Device Scale Ratio: %0.2f", scale))
}

func (g *Game) Layout(outsideWidth, outsideHeight int) (int, int) {
	// The unit of outsideWidth/Height is device-independent pixels.
	// By multiplying them by the device scale factor, we can get a hi-DPI screen size.
	s := ebiten.DeviceScaleFactor()
	return int(float64(outsideWidth) * s), int(float64(outsideHeight) * s)
}

func main() {
	ebiten.SetWindowSize(640, 480)
	ebiten.SetWindowTitle("High DPI (Ebiten Demo)")
	if err := ebiten.RunGame(NewGame()); err != nil {
		log.Fatal(err)
	}
}
