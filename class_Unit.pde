class Unit {
  int position_x;
  int position_y;
  int position_x_center;
  Collider collider;

  int health_point;
  int damage;
  int speed;

  Unit(Collider x_collider, int x_health_point, int x_damage, int x_speed) {
    this.collider = x_collider;
    this.health_point = x_health_point;
    this.damage = x_damage;
    this.speed = x_speed;
  }

  void damage(Unit x_unit, int x_damage) {
    x_unit.take_damage(x_damage);
  }
  void take_damage(int x_damage) {
    this.health_point = this.health_point - x_damage;
  }

  void move(int x_number) {
    println("Player_" + x_number + ": Unit: move: ...");
    if (x_number == 1) {
      this.position_x = this.position_x + this.speed;
    }
    if (x_number == 2) {
      this.position_x = this.position_x - this.speed;
    }
    println("Player_" + x_number + ": Unit: move: done");
  }
  boolean is_dead() {
    if (this.health_point <= 0) {
      return true;
    }
    return false;
  }
  void update(int x_number) {
    println("Player_" + x_number + ": Unit: update: ...");
    this.move(x_number);
    println("Player_" + x_number + ": Unit: update: done");
  }
  void display() {
    println("Unit: display: ...");
    rect(this.position_x, this.position_y, this.collider.size_x, this.collider.size_y);
    println("Unit: display: done");
  }
}
