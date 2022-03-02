class Turret {
  private int position_x;
  private int position_y;
  private int size_x;
  private int size_y;
  private int damage;
  private int range;
  private int cost;

  private String name;
  private Animation animation;

  Turret(int x_position_x, int x_position_y, int x_size_x, int x_size_y, int x_damage, int x_range, int x_cost, String x_name) {
    this.position_x = x_position_x;
    this.position_y = x_position_y;
    this.size_x = x_size_x;
    this.size_y = x_size_y;

    this.damage = x_damage;
    this.range = x_range;
    this.cost = x_cost;
    this.name = x_name;
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
  int get_size_x() {
    return this.size_x;
  }
  int get_size_y() {
    return this.size_y;
  }

  ///////////////////////////////////////////////////////////////setter
  void set_position_x(int x_position_x) {
    this.position_x = x_position_x;
  }
  void set_position_y(int x_position_y) {
    this.position_y = x_position_y;
  }
  void set_animation(Animation x_animation) {
    this.animation = x_animation;
  }

  ///////////////////////////////////////////////////////////////function
  void damage(Unit x_unit) {
    x_unit.take_damage(this.damage);
  }

  void update(int x_number) {
    println("Player_" + x_number + ": turret: update: ...");
    this.animation.update("idle", this.position_x, this.position_y);
    println("Player_" + x_number + ": turret: update: done");
  }
  void display() {
    println("Turret: display: ...");
    fill(0, 100, 0);
    rect(this.position_x, this.position_y, this.size_x, this.size_y);
    fill(0);
    text(this.range, this.position_x, this.position_y + 10);
    this.animation.display();
    println("Turret: display: done");
  }
}
