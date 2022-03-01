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
  Projectile tab_projectile[];
  int nb_projectile;

  String power_name;
  String period_name;
  boolean can_use_power;
  int power_charge_actual;
  int power_charge;
  int add_turret_max_cost;
  int add_period_cost;
  int period_max;

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

    can_use_power = false;
    power_charge_actual = 0;
    power_charge = 200;
    add_turret_max_cost = 1000;
    add_period_cost = 4000;
    period_max = 6;
  }

  ///////////////////////////////////////////////////////////////getter
  int get_health_point() {
    return this.health_point;
  }
  int get_number() {
    return this.number;
  }
  Unit get_unit(int x_unit) {
    return this.tab_unit[x_unit];
  }
  int get_nb_unit() {
    return this.nb_unit;
  }
  Collider get_collider() {
    return this.collider;
  }
  int get_period() {
    return this.period;
  }
  Turret get_turret(int x_turret) {
    return this.tab_turret[x_turret];
  }
  int get_nb_turret() {
    return this.nb_turret;
  }
  Projectile get_projectile(int x_projectile) {
    return this.tab_projectile[x_projectile];
  }
  int get_nb_projectile() {
    return this.nb_projectile;
  }
  int get_power_charge() {
    return this.power_charge;
  }

  ///////////////////////////////////////////////////////////////setter
  ///////////////////////////////////////////////////////////////function
  void add_unit(Unit x_unit) {
    println("Player_" + this.number + ": add_unit: ...");
    if (this.money >= x_unit.cost) {
      this.money = this.money - x_unit.cost;
      Unit unit_to_add = new Unit(new Collider(x_unit.collider.size_x, x_unit.collider.size_y), x_unit.health_point, x_unit.damage, x_unit.speed, x_unit.range, x_unit.cost);
      if (this.number == 1) {
        unit_to_add.position_x = this.position_x + this.collider.size_x;
      }
      if (this.number == 2) {
        unit_to_add.position_x = this.position_x - unit_to_add.collider.size_x;
      }
      unit_to_add.position_y = this.position_y + this.collider.size_y - unit_to_add.collider.size_y;
      this.tab_unit[this.nb_unit] = unit_to_add;
      this.nb_unit = this.nb_unit + 1;
    }

    println("Player_" + this.number + ": add_unit: done");
  }
  void remove_unit(int x_number) {
    println("Player_" + this.number + ": remove_unit: ...");
    for (int i = x_number; i < this.nb_unit; i++) {
      this.tab_unit[i] = this.tab_unit[i + 1];
    }
    this.nb_unit = this.nb_unit - 1;
    println("Player_" + this.number + ": remove_unit: done");
  }
  void take_damage(int x_damage) {
    this.health_point = this.health_point - x_damage;
  }
  void add_period() {
    if (this.period < this.period_max && this.exp >= this.add_period_cost) {
      this.period = this.period + 1;
      this.add_period_cost = this.add_period_cost * 2;
      this.exp = 0;
    }
  }

  void add_turret(Turret x_turret) {
    println("Player_" + this.number + ": add_turret: ...");
    int turret_to_add_size_x = 20;
    int turret_to_add_size_y = 20;
    int turret_to_add_decal = 10;
    if (this.number == 1) {
      if (this.money >= x_turret.cost && this.nb_turret < this.nb_turret_max) {
        if (this.nb_turret == 0) {
          Turret turret_to_add = new Turret(0, this.position_y + (turret_to_add_decal * 3) + (turret_to_add_size_y * 3), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
          this.tab_turret[this.nb_turret] = turret_to_add;
          this.nb_turret = this.nb_turret + 1;
          this.money = this.money - turret_to_add.cost;
        } else if (this.nb_turret == 1) {
          Turret turret_to_add = new Turret(0, this.position_y + (turret_to_add_decal * 2) + (turret_to_add_size_y * 2), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
          this.tab_turret[this.nb_turret] = turret_to_add;
          this.nb_turret = this.nb_turret + 1;
          this.money = this.money - turret_to_add.cost;
        } else if (this.nb_turret == 2) {
          Turret turret_to_add = new Turret(0, this.position_y + (turret_to_add_decal * 1) + (turret_to_add_size_y * 1), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
          this.tab_turret[this.nb_turret] = turret_to_add;
          this.nb_turret = this.nb_turret + 1;
          this.money = this.money - turret_to_add.cost;
        } else if (this.nb_turret == 3) {
          Turret turret_to_add = new Turret(0, this.position_y + (turret_to_add_decal * 0) + (turret_to_add_size_y * 0), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
          this.tab_turret[this.nb_turret] = turret_to_add;
          this.nb_turret = this.nb_turret + 1;
          this.money = this.money - turret_to_add.cost;
        }
      }
    }
    if (this.number == 2) {
      if (this.nb_turret == 0) {
        Turret turret_to_add = new Turret(screen_size_x - turret_to_add_size_x, this.position_y + (turret_to_add_decal * 3) + (turret_to_add_size_y * 3), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
      } else if (this.nb_turret == 1) {
        Turret turret_to_add = new Turret(screen_size_x - turret_to_add_size_x, this.position_y + (turret_to_add_decal * 2) + (turret_to_add_size_y * 2), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
      } else if (this.nb_turret == 2) {
        Turret turret_to_add = new Turret(screen_size_x - turret_to_add_size_x, this.position_y + (turret_to_add_decal * 1) + (turret_to_add_size_y * 1), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
      } else if (this.nb_turret == 3) {
        Turret turret_to_add = new Turret(screen_size_x - turret_to_add_size_x, this.position_y + (turret_to_add_decal * 0) + (turret_to_add_size_y * 0), turret_to_add_size_x, turret_to_add_size_y, x_turret.damage, x_turret.range, x_turret.cost);
        this.tab_turret[this.nb_turret] = turret_to_add;
        this.nb_turret = this.nb_turret + 1;
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
  void add_turret_max() {
    if (this.money >= this.add_turret_max_cost) {
      this.money = this.money - add_turret_max_cost;
      this.nb_turret_max = this.nb_turret_max + 1;
      this.add_turret_max_cost = this.add_turret_max_cost * 2;
      if (this.nb_turret_max >= this.nb_turret_limit) {
        this.nb_turret_max = this.nb_turret_limit;
      }
    }
  }

  void power() {
    if (can_use_power == true) {
      if (this.period == 1) {
        this.power_1();
      } else if (this.period == 2) {
        this.power_2();
      }
      this.can_use_power = false;
      this.power_charge_actual = 0;
    }
  }

  void power_1() {
    this.nb_projectile = 20;
    this.tab_projectile = new Projectile[nb_projectile];
    for (int i = 0; i < nb_projectile; i++) {
      float random_float = random(this.position_x + this.collider.size_x, screen_size_x - this.collider.size_x);
      int random_int = int(random_float);
      this.tab_projectile[i] = new Projectile(random_int, 0, 20, 20, new Collider(20, 20), 500, 5);
    }
  }

  void power_2() {
    this.nb_projectile = 20;
    this.tab_projectile = new Projectile[nb_projectile];
    for (int i = 0; i < nb_projectile; i++) {
      float random_float = random(this.position_x + this.collider.size_x, screen_size_x - this.collider.size_x);
      int random_int = int(random_float);
      this.tab_projectile[i] = new Projectile(random_int, 0, 20, 20, new Collider(20, 20), 500, 5);
    }
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
        this.remove_unit(i);
      }
    }
    for (int i = 0; i < this.nb_turret; i++) {
      this.tab_turret[i].update(this.number);
    }
    for (int i = 0; i < this.nb_projectile; i++) {
      this.tab_projectile[i].update();
    }
    if (this.number == 2) {
      this.money = 999999;
    }

    int turret_to_add_size_x = 20;
    int turret_to_add_size_y = 20;
    int turret_to_add_decal = 10;
    if (this.nb_turret == 1) {
      this.tab_turret[0].position_y = this.position_y + (turret_to_add_decal * 3) + (turret_to_add_size_y * 3);
    }
    if (this.nb_turret == 2) {
      this.tab_turret[0].position_y = this.position_y + (turret_to_add_decal * 3) + (turret_to_add_size_y * 3);
      this.tab_turret[1].position_y = this.position_y + (turret_to_add_decal * 2) + (turret_to_add_size_y * 2);
    }
    if (this.nb_turret == 3) {
      this.tab_turret[0].position_y = this.position_y + (turret_to_add_decal * 3) + (turret_to_add_size_y * 3);
      this.tab_turret[1].position_y = this.position_y + (turret_to_add_decal * 2) + (turret_to_add_size_y * 2);
      this.tab_turret[2].position_y = this.position_y + (turret_to_add_decal * 1) + (turret_to_add_size_y * 1);
    }
    if (this.nb_turret == 4) {
      this.tab_turret[0].position_y = this.position_y + (turret_to_add_decal * 3) + (turret_to_add_size_y * 3);
      this.tab_turret[1].position_y = this.position_y + (turret_to_add_decal * 2) + (turret_to_add_size_y * 2);
      this.tab_turret[2].position_y = this.position_y + (turret_to_add_decal * 1) + (turret_to_add_size_y * 1);
      this.tab_turret[3].position_y = this.position_y + (turret_to_add_decal * 0) + (turret_to_add_size_y * 0);
    }

    this.power_charge_actual = this.power_charge_actual + 1;
    if (this.power_charge_actual > power_charge) {
      this.power_charge_actual = power_charge;
      can_use_power = true;
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
    for (int i = 0; i < this.nb_projectile; i++) {
      if (this.tab_projectile[i].used == false) {
        this.tab_projectile[i].display();
      }
    }
    fill(0);
    text(this.health_point, this.position_x + 50, this.position_y+10);
    text(this.money, this.position_x + 50, this.position_y+20);
    text(this.exp, this.position_x + 50, this.position_y+30);
    text(this.period, this.position_x + 50, this.position_y+40);
    text(this.nb_turret, this.position_x + 50, this.position_y+50);
    text(this.power_charge_actual, this.position_x + 50, this.position_y+60);

    println("Player_" + this.number + ": display: done");
  }
}
