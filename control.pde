boolean mouse_click = false;

int mouse_x;
int mouse_y;

boolean input_space = false;
boolean input_a = false;

void mouseClicked() {
  mouse_click = true;
}

void keyPressed() {
  if (key == ' ') {
    input_space = true;
  }
  if (key == 'a') {
    input_a = true;
  }
}

void keyReleased() {
  if (key == ' ') {
    input_space = false;
  }
  if (key == 'a') {
    input_a = false;
  }
}
