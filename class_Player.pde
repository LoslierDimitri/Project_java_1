class Player {
  int health_point;
  int number;
  Unit tab_unit[];
  int nb_unit;
  int nb_unit_max;
  Collider collider;
  int position_x;
  int position_y;
  int money;

  Player(int x_number, int x_health_point, Collider x_collider, int x_position_x, int x_position_y, int x_money) {
    this.health_point = x_health_point;
    this.collider = x_collider;
    this.position_x = x_position_x;
    this.position_y = x_position_y;
    this.number = x_number;
    this.nb_unit = 0;
    this.nb_unit_max = 50;
    this.tab_unit = new Unit[this.nb_unit_max];
    this.collider.position_x = this.position_x;
    this.collider.position_y = this.position_y;
    this.money = x_money;
  }

  void add_unit(Unit x_unit) {
    println("Player_" + this.number + ": add_unit: ...");
    if (this.money >= x_unit.cost) {
      this.money = this.money - x_unit.cost;
      Unit unit_to_add = new Unit(new Collider(x_unit.collider.size_x, x_unit.collider.size_y), x_unit.health_point, x_unit.damage, x_unit.speed, x_unit.range, x_unit.cost);
      if (this.number == 1) {
        unit_to_add.position_x = 200;
      }
      if (this.number == 2) {
        unit_to_add.position_x = 800;
      }
      this.tab_unit[this.nb_unit] = unit_to_add;
      this.nb_unit = this.nb_unit + 1;
    }

    println("Player_" + this.number + ": add_unit: done");
  }
  void remove_unit() {
    println("Player_" + this.number + ": remove_unit: ...");
    for (int i = 0; i < this.nb_unit; i++) {
      this.tab_unit[i] = this.tab_unit[i + 1];
    }
    this.nb_unit = this.nb_unit - 1;
    println("Player_" + this.number + ": remove_unit: done");
  }
  void take_damage(int x_damage) {
    this.health_point = this.health_point - x_damage;
  }

  void update(Main x_main) {
    println("Player_" + this.number + ": update: ...");
    for (int i = 0; i < this.nb_unit; i++) {
      tab_unit[i].update(this.number);
      if (tab_unit[i].is_dead() == true) {
        if (this.number == 2) {
          x_main.tab_player[0].money = x_main.tab_player[0].money + ((tab_unit[i].cost / 4) * 3);
        }
        this.remove_unit();
      }
    }
    println("Player_" + this.number + ": update: done");
  }
  void display() {
    println("Player_" + this.number + ": display: ...");
    for (int i = 0; i < this.nb_unit; i++) {
      tab_unit[i].display();
    }
    fill(0, 0, 200);
    rect(this.position_x, this.position_y, this.collider.size_x, this.collider.size_y);
    fill(0);
    text(this.health_point, this.position_x, this.position_y+10);
    text(this.money, this.position_x, this.position_y+20);
    println("Player_" + this.number + ": display: done");
  }
}
