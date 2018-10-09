
import processing.sound.*;

int numBins = 128;
AudioIn audio;
FFT fft;
float[] spectrum = new float[numBins];

void setup() {

  size(512, 512);

  audio = new AudioIn(this, 0);
  audio.start();

  fft = new FFT(this, numBins);
  fft.input(audio);
}


void draw() {
  fft.analyze(spectrum);
    
  background(spectrum[0] * 5 * 255);
}
