class Collider {
  int position_x;
  int position_y;

  int size_x;
  int size_y;
  int position_x_center;

  Collider(int x_size_x, int x_size_y) {
    this.size_x = x_size_x;
    this.size_y = x_size_y;
  }

  boolean collide(Collider x_collider) {
    boolean result = false;

    if (
      (this.position_x >= x_collider.position_x && this.position_x <= x_collider.position_x + x_collider.size_x)
      ||
      (this.position_x + this.size_x >= x_collider.position_x && this.position_x + this.size_x <= x_collider.position_x + x_collider.size_x)
      )
    {
      result = true;
    }

    return result;
  }
}
