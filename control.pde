boolean mouse_click = false;

int mouse_x;
int mouse_y;

boolean input_space = false;

void mouseClicked() {
  mouse_click = true;
}

void keyPressed() {
  if (key == ' ') {
    input_space = true;
  }
}

void keyReleased() {
  if (key == ' ') {
    input_space = false;
  }
}

void reset() {
  mouse_click = false;
  mouse_x = mouseX;
  mouse_y = mouseY;
}
