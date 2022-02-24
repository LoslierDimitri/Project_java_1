class Turret {
  int position_x;
  int position_y;
  int size_x;
  int size_y;
  int damage;
  int range;
  int cost;

  Turret(int x_damage, int x_range, int x_cost) {
    this.damage = x_damage;
    this.range = x_range;
    this.cost = x_cost;
  }

  void damage(Unit x_unit, int x_damage) {
    x_unit.take_damage(x_damage);
  }

  void update(int x_number) {
    println("Player_" + x_number + ": turret: update: ...");
    println("Player_" + x_number + ": turret: update: done");
  }
  void display() {
    println("Turret: display: ...");
    println("Turret: display: done");
  }
}
