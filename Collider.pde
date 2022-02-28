class Collider {
  int position_x;
  int position_y;
  int position_x_collision = 0;
  int position_y_collision = 0;
  int size_x;
  int size_y;
  int position_x_center;

  Collider(int x_size_x, int x_size_y) {
    this.size_x = x_size_x;
    this.size_y = x_size_y;
  }

  boolean collide(Collider x_collider, int x_number) {
    boolean result = false;

    if (x_number == 1) {
      this.position_x_collision = this.position_x + this.size_x + 10;
      if (this.position_x_collision >= x_collider.position_x && this.position_x_collision <= x_collider.position_x + x_collider.size_x) {
        result = true;
      }
    }
    if (x_number == 2) {
      this.position_x_collision = this.position_x - 10;
      if (this.position_x_collision >= x_collider.position_x && this.position_x_collision <= x_collider.position_x + x_collider.size_x) {
        result = true;
      }
    }

    return result;
  }

  boolean collide_total(Collider x_collider, int x_number) {
    boolean result = false;

    if (x_number == 1) {
      if (this.position_x >= x_collider.position_x && this.position_x <= x_collider.position_x + x_collider.size_x && this.position_y >= x_collider.position_y && this.position_y <= x_collider.position_y + x_collider.size_y) {
        result = true;
      }
    }

    return result;
  }
}
