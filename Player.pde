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
  int exp;
  int period;

  Turret tab_turret[];
  int nb_turret;
  int nb_turret_max;
  int nb_turret_limit;

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
    this.exp = 0;
    this.period = 1;

    this.nb_turret = 0;
    this.nb_turret_max = 1;
    this.nb_turret_limit = 4;
    this.tab_turret = new Turret[this.nb_turret_limit];
  }

  void add_unit(Unit x_unit) {
    println("Player_" + this.number + ": add_unit: ...");
    if (this.money >= x_unit.cost) {
      this.money = this.money - x_unit.cost;
      Unit unit_to_add = new Unit(new Collider(x_unit.collider.size_x, x_unit.collider.size_y), x_unit.health_point, x_unit.damage, x_unit.speed, x_unit.range, x_unit.cost);
      if (this.number == 1) {
        unit_to_add.position_x = 1;
      }
      if (this.number == 2) {
        unit_to_add.position_x = 900;
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
  void add_period() {
    if (this.period == 1 && this.exp >= 4000) {
      this.period = this.period + 1;
    }
  }

  void add_turret(Turret x_turret) {
    println("Player_" + this.number + ": add_turret: ...");
    if (this.money >= x_turret.cost && this.nb_turret < this.nb_turret_limit) {
      if (this.nb_turret == 0) {
        Turret turret_to_add = new Turret(0, 200, 20, 20, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
        this.money = this.money - turret_to_add.cost;
      } else if (this.nb_turret == 1) {
        Turret turret_to_add = new Turret(0, 230, 20, 20, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
        this.money = this.money - turret_to_add.cost;
      } else if (this.nb_turret == 2) {
        Turret turret_to_add = new Turret(0, 260, 20, 20, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
        this.money = this.money - turret_to_add.cost;
      } else if (this.nb_turret == 3) {
        Turret turret_to_add = new Turret(0, 290, 20, 20, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
        this.money = this.money - turret_to_add.cost;
      }
    }
    println("Player_" + this.number + ": add_turret: done");
  }

  void remove_turret(int x_nb_turret) {
    println("Player_" + this.number + ": remove_turret: ...");

    if (this.nb_turret > 0) {

      for (int i = x_nb_turret - 1; i < this.nb_turret - 1; i++) {

        this.tab_turret[i] = this.tab_turret[i + 1];
      }
      this.nb_turret = this.nb_turret - 1;
    }

    /*
     if (this.nb_turret > 0) {
     
     int remove = x_nb_turret - 1;
     Turret tab_turret_to_add[] = new Turret[this.nb_turret - 1];
     int nb_turret_to_add = 0;
     
     for (int i = 0; i < this.nb_turret; i++) {
     if (i < remove) {
     tab_turret_to_add[nb_turret_to_add] = this.tab_turret[i];
     nb_turret_to_add = nb_turret_to_add + 1;
     } else if (i > remove) {
     tab_turret_to_add[nb_turret_to_add] = this.tab_turret[i];
     nb_turret_to_add = nb_turret_to_add + 1;
     }
     }
     this.tab_turret = tab_turret_to_add;
     this.nb_turret = this.nb_turret - 1;
     }
     */

    println("Player_" + this.number + ": remove_turret: done");
  }

  void update(Main x_main) {
    println("Player_" + this.number + ": update: ...");
    for (int i = 0; i < this.nb_unit; i++) {
      tab_unit[i].update(this.number);
      if (tab_unit[i].is_dead() == true) {
        if (this.number == 2) {
          x_main.tab_player[0].money = x_main.tab_player[0].money + tab_unit[i].cost;
          x_main.tab_player[0].exp = x_main.tab_player[0].exp + tab_unit[i].cost;
        }
        this.remove_unit();
      }
    }
    if (this.number == 2) {
      this.money = 999999;
    }

    if (this.nb_turret == 1) {
      this.tab_turret[0].position_y = 200;
    }
    if (this.nb_turret == 2) {
      this.tab_turret[0].position_y = 200;
      this.tab_turret[1].position_y = 230;
    }
    if (this.nb_turret == 3) {
      this.tab_turret[0].position_y = 200;
      this.tab_turret[1].position_y = 230;
      this.tab_turret[2].position_y = 260;
    }
    if (this.nb_turret == 4) {
      this.tab_turret[0].position_y = 200;
      this.tab_turret[1].position_y = 230;
      this.tab_turret[2].position_y = 260;
      this.tab_turret[3].position_y = 290;
    }

    println("Player_" + this.number + ": update: done");
  }
  void display() {
    println("Player_" + this.number + ": display: ...");
    fill(0, 0, 200);
    rect(this.position_x, this.position_y, this.collider.size_x, this.collider.size_y);
    for (int i = 0; i < this.nb_unit; i++) {
      this.tab_unit[i].display();
    }
    for (int i = 0; i < this.nb_turret; i++) {
      this.tab_turret[i].display();
    }
    fill(0);
    text(this.health_point, this.position_x + 50, this.position_y+10);
    text(this.money, this.position_x + 50, this.position_y+20);
    text(this.exp, this.position_x + 50, this.position_y+30);
    text(this.period, this.position_x + 50, this.position_y+40);
    text(this.nb_turret, this.position_x + 50, this.position_y+50);

    for (int i = 0; i < this.nb_turret; i++) {
      text(this.tab_turret[i].cost + " " + this.tab_turret[i].position_x + " " + this.tab_turret[i].position_y, this.position_x + 200, this.position_y + 100 + (i*10));
    }

    println("Player_" + this.number + ": display: done");
  }
}
