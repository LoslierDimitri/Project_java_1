class Projectile {
  int position_x;
  int position_y;
  int size_x;
  int size_y;
  Collider collider;
  int damage;
  int speed;

  boolean used = false;

  Projectile (int x_position_x, int x_position_y, int x_size_x, int x_size_y, Collider x_collider, int x_damage, int x_speed) {
    this.position_x = x_position_x;
    this.position_y = x_position_y;
    this.size_x = x_size_x;
    this.size_y = x_size_y;
    this.collider = x_collider;
    this.damage = x_damage;
    this.speed = x_speed;
  }

  boolean collide_total(Collider x_collider, int x_number) {
    boolean result = false;
    if (this.collider.collide_total(x_collider, x_number) == true) {
      result = true;
    }
    return result;
  }

  void move() {
    this.position_y = this.position_y + this.speed;
  }
  void damage(Unit x_unit) {
    if (this.used == false) {
      x_unit.take_damage(this.damage);
    }
  }

  void update() {
    if (this.position_y <= 400) {
      this.collider.position_x = this.position_x;
      this.collider.position_y = this.position_y;
      this.move();
    }
  }
  void display() {
    fill(0, 100, 0);
    rect(this.collider.position_x, this.collider.position_y, this.collider.size_x, this.collider.size_y);
    fill(0, 200, 0);
    rect(this.position_x, this.position_y, this.size_x, this.size_y);
  }
}
