class Turret {
  int position_x;
  int position_y;
  int size_x;
  int size_y;
  int damage;
  int range;
  int cost;

  String name;

  Turret(int x_position_x, int x_position_y, int x_size_x, int x_size_y, int x_damage, int x_range, int x_cost) {
    this.position_x = x_position_x;
    this.position_y = x_position_y;
    this.size_x = x_size_x;
    this.size_y = x_size_y;

    this.damage = x_damage;
    this.range = x_range;
    this.cost = x_cost;
  }
  ///////////////////////////////////////////////////////////////getter
  int get_position_x() {
    return this.position_x;
  }
  int get_position_y() {
    return this.position_y;
  }
  int get_damage() {
    return this.damage;
  }
  int get_range() {
    return this.range;
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

  ///////////////////////////////////////////////////////////////function
  void damage(Unit x_unit) {
    x_unit.take_damage(this.damage);
  }

  void update(int x_number) {
    println("Player_" + x_number + ": turret: update: ...");
    println("Player_" + x_number + ": turret: update: done");
  }
  void display() {
    println("Turret: display: ...");
    fill(0, 100, 0);
    rect(this.position_x, this.position_y, this.size_x, this.size_y);
    fill(0);
    text(this.range, this.position_x, this.position_y + 10);
    println("Turret: display: done");
  }
}
