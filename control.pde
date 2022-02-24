boolean mouse_click = false;

int mouse_x;
int mouse_y;

void mouseClicked() {
  mouse_click = true;
}

void keyPressed() {
}

void keyReleased() {
}

void reset() {
  mouse_click = false;
  mouse_x = mouseX;
  mouse_y = mouseY;
}
