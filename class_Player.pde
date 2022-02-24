class Player {
  int number;
  Unit tab_unit[];
  int nb_unit;
  int nb_unit_max;

  Player(int x_number) {
    this.number = x_number;

    this.nb_unit = 0;
    this.nb_unit_max = 50;
    this.tab_unit = new Unit[this.nb_unit_max];
  }

  void add_unit(Unit x_unit) {
    println("Player_" + this.number + ": add_unit: ...");
    Unit unit_to_add = new Unit(new Collider(x_unit.collider.size_x, x_unit.collider.size_y), x_unit.health_point, x_unit.damage, x_unit.speed, x_unit.range);
    if (this.number == 1) {
      unit_to_add.position_x = 0;
    }
    if (this.number == 2) {
      unit_to_add.position_x = 1000;
    }
    this.tab_unit[this.nb_unit] = unit_to_add;
    this.nb_unit = this.nb_unit + 1;

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

  void update() {
    println("Player_" + this.number + ": update: ...");
    for (int i = 0; i < this.nb_unit; i++) {
      tab_unit[i].update(this.number);
      if (tab_unit[i].is_dead() == true) {
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
    println("Player_" + this.number + ": display: done");
  }
}
