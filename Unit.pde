class Unit {
  int position_x;
  int position_y;
  int position_x_center;
  Collider collider;
  int health_point;
  int damage;
  int speed;
  int range;
  boolean can_move;
  int cost;
  String name;

  Unit(Collider x_collider, int x_health_point, int x_damage, int x_speed, int x_range, int x_cost) {
    this.collider = x_collider;
    this.health_point = x_health_point;
    this.damage = x_damage;
    this.speed = x_speed;
    this.range = x_range;
    this.can_move = true;
    this.position_y = 200;
    this.cost = x_cost;
  }
  ///////////////////////////////////////////////////////////////getter
  int get_position_x() {
    return this.position_x;
  }
  int get_position_y() {
    return this.position_y;
  }
  int get_health_point() {
    return this.health_point;
  }
  int get_damage() {
    return this.damage;
  }
  int get_speed() {
    return this.speed;
  }
  Collider get_collider() {
    return this.collider;
  }
  int get_range() {
    return this.range;
  }
  boolean get_can_move() {
    return this.can_move;
  }
  int get_cost() {
    return this.cost;
  }
  String get_name() {
    return this.name;
  }

  ///////////////////////////////////////////////////////////////setter
  void set_position_x(int x_position_x) {
    this.position_x = x_position_x;
  }
  void set_position_y(int x_position_y) {
    this.position_y = x_position_y;
  }
  void set_can_move(boolean x_result) {
    this.can_move = x_result;
  }

  ///////////////////////////////////////////////////////////////function
  void damage(Unit x_unit) {
    x_unit.take_damage(this.damage);
  }
  void damage_player(Player x_player) {
    x_player.take_damage(this.damage);
  }
  void take_damage(int x_damage) {
    this.health_point = this.health_point - x_damage;
  }

  void move(int x_number) {
    println("Player_" + x_number + ": Unit: move: ...");
    if (can_move == true) {
      if (x_number == 1) {
        this.position_x = this.position_x + this.speed;
      }
      if (x_number == 2) {
        this.position_x = this.position_x - this.speed;
      }
    }
    println("Player_" + x_number + ": Unit: move: done");
  }
  boolean is_dead() {
    if (this.health_point <= 0) {
      return true;
    }
    return false;
  }
  boolean collide(Collider x_collider, int x_number) {
    boolean result = false;

    if (this.collider.collide(x_collider, x_number) == true) {
      result = true;
    }

    return result;
  }

  void update(int x_number) {
    println("Player_" + x_number + ": Unit: update: ...");
    this.collider.set_position_x(this.position_x);
    this.collider.set_position_y(this.position_y);
    this.move(x_number);
    this.can_move = true;
    println("Player_" + x_number + ": Unit: update: done");
  }
  void display() {
    println("Unit: display: ...");
    fill(255);
    rect(this.collider.get_position_x(), this.collider.get_position_y(), this.collider.get_size_x(), this.collider.get_size_y());
    fill(0);
    textSize(10);
    text(this.health_point, this.position_x, this.position_y+10);
    println("Unit: display: done");
  }
}
