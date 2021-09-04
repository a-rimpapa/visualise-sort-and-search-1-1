
import java.util.Random;

final int arraySize = 200;
final int maxValue = 200;
final int w = 600;
final int h = 300;

int[] array = new int[arraySize];
Random r = new Random();
 
void settings() {
  size(w, h);
}
 
void setup() {
  for (int i = 0; i < arraySize; i++) {
    array[i] = r.nextInt(maxValue + 1);
  }
  colorMode(HSB, maxValue);
}

void draw() {
  int rectWidth = w / arraySize;
  for (int i = 0; i < arraySize; i++) {
    fill(maxValue - array[i], 150, 150);
    rect(i * rectWidth, h - array[i], rectWidth, array[i]);
  }
}
