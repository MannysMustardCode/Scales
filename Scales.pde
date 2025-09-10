void setup() {
  size(600, 400);
  background(220);   // only draw once
}

void draw() {
  int scaleW = 50;
  int scaleH = 50;

  // rows of scales
  for (int row = 0; row < 20; row++) {               // 20 rows
    for (int col = 0; col < 14; col++) {            // 12 columns
      int x = col * scaleW;

      // stagger every other row for overlap
      if (row % 3 == 1) {
        x += scaleW / 2;
      }

      int y = row * (scaleH / 2);  // vertical overlap

      scaleShape(x, y, scaleW, scaleH);
    }
  }
}

// function to draw one "scale"
void scaleShape(int x, int y, int w, int h) {
  pushMatrix();
  translate(x, y);

  // Random color variation using Math.random()
  int r = 80 + (int)(Math.random() * 100);
  int g = 120 + (int)(Math.random() * 120);
  int b = 150 + (int)(Math.random() * 105);

  fill(r, g, b);
  stroke(0);

  // Optional: random size variation
  float wVar = (float)(w * (0.9 + Math.random() * 0.2));  // 90–110% of w
  float hVar = (float)(h * (0.9 + Math.random() * 0.2));  // 90–110% of h

  arc(0, 0, wVar, hVar, PI, TWO_PI);

  // highlight semi-circle for detail
  fill(200, 230, 255, 180);
  arc(0, 0, wVar * 0.6, hVar * 0.6, PI, TWO_PI);

  popMatrix();
}

