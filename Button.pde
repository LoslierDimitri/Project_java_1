class Button {
  private int position_x;
  private int position_y;
  private int size_x;
  private int size_y;

  private String name;

  Button (String x_name, int x_position_x, int x_position_y, int x_size_x, int x_size_y) {
    this.position_x = x_position_x;
    this.position_y = x_position_y;
    this.size_x = x_size_x;
    this.size_y = x_size_y;
    this.name = x_name;
  }

  ///////////////////////////////////////////////////////////////getter
  int get_position_x() {
    return this.position_x;
  }
  int get_position_y() {
    return this.position_y;
  }
  int get_size_x() {
    return this.size_x;
  }
  int get_size_y() {
    return this.size_y;
  }
  ///////////////////////////////////////////////////////////////setter
  ///////////////////////////////////////////////////////////////function
  boolean collide(int x_mouse_x, int x_mouse_y) {
    boolean result = false;

    if (x_mouse_x >= this.position_x &&
      x_mouse_x <= this.position_x + this.size_x &&
      x_mouse_y >= this.position_y &&
      x_mouse_y <= this.position_y + this.size_y)
    {
      result = true;
    }

    return result;
  }
  void add_unit(Main x_main, Unit x_unit) {
    x_main.get_player(0).add_unit(x_unit);
  }
  void add_turret(Main x_main, Turret x_turret) {
    x_main.get_player(0).add_turret(x_turret);
  }
  void remove_turret(Main x_main, int x_turret) {
    if (x_turret <= x_main.get_player(0).get_nb_turret()) {
      x_main.get_player(0).remove_turret(x_turret);
    }
  }
  void add_turret_max(Main x_main) {
    x_main.get_player(0).add_turret_max();
  }
  void add_period(Main x_main) {
    x_main.get_player(0).add_period();
  }
  void power(Main x_main) {
    x_main.get_player(0).power();
  }

  void display() {
    fill(100, 0, 0);
    rect(this.position_x, this.position_y, this.size_x, this.size_y);
    fill(0);
    text(this.name, this.position_x, this.position_y + 10);
  }

  void display_unit(Main x_main, int x_unit, Button x_button) {
    x_button.display();

    fill(0);
    textSize(12);
    int period_player = x_main.get_player(0).get_period();

    if (period_player == 1) {
      if (x_unit == 1) {
        text("name: " + unit_1.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_1.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_1.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_1.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 2) {
        text("name: " + unit_2.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_2.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_2.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_2.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 3) {
        text("name: " + unit_3.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_3.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_3.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_3.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
    }
    if (period_player == 2) {
      if (x_unit == 1) {
        text("name: " + unit_11.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_11.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_11.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_11.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 2) {
        text("name: " + unit_12.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_12.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_12.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_12.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 3) {
        text("name: " + unit_13.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_13.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_13.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_13.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
    }
    if (period_player == 3) {
      if (x_unit == 1) {
        text("name: " + unit_21.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_21.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_21.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_21.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 2) {
        text("name: " + unit_22.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_22.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_22.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_22.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 3) {
        text("name: " + unit_23.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_23.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_23.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_23.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
    }
    if (period_player == 4) {
      if (x_unit == 1) {
        text("name: " + unit_31.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_31.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_31.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_31.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 2) {
        text("name: " + unit_32.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_32.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_32.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_32.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 3) {
        text("name: " + unit_33.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_33.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_33.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_33.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
    }
    if (period_player == 5) {
      if (x_unit == 1) {
        text("name: " + unit_41.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_41.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_41.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_41.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 2) {
        text("name: " + unit_42.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_42.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_42.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_42.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 3) {
        text("name: " + unit_43.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_43.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_43.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_43.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
    }
    if (period_player == 6) {
      if (x_unit == 1) {
        text("name: " + unit_51.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_51.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_51.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_51.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 2) {
        text("name: " + unit_52.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_52.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_52.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_52.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
      if (x_unit == 3) {
        text("name: " + unit_53.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 10);
        text("health point: " + unit_53.get_health_point(), x_button.get_position_x(), x_button.get_position_y() + 20);
        text("damage: " + unit_53.get_damage(), x_button.get_position_x(), x_button.get_position_y() + 30);
        text("cost: " + unit_53.get_cost(), x_button.get_position_x(), x_button.get_position_y() + 40);
      }
    }
  }
}
