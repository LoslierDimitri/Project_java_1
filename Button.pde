class Button {
  int position_x;
  int position_y;
  int size_x;
  int size_y;

  String name;

  Button (String x_name, int x_position_x, int x_position_y, int x_size_x, int x_size_y) {
    this.position_x = x_position_x;
    this.position_y = x_position_y;
    this.size_x = x_size_x;
    this.size_y = x_size_y;
    this.name = x_name;
  }

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
    x_main.tab_player[0].add_unit(x_unit);
  }
  void add_turret(Main x_main, Turret x_turret) {
    x_main.tab_player[0].add_turret(x_turret);
  }
  void remove_turret(Main x_main, int x_turret) {
    if (x_turret <= x_main.tab_player[0].nb_turret) {
      x_main.tab_player[0].remove_turret(x_turret);
    }
  }
  void add_turret_max(Main x_main) {
    x_main.tab_player[0].add_turret_max();
  }
  void add_period(Main x_main) {
    x_main.tab_player[0].add_period();
  }
  void power(Main x_main) {
    x_main.tab_player[0].power();
  }

  void display() {
    fill(100, 0, 0);
    rect(this.position_x, this.position_y, this.size_x, this.size_y);
    fill(0);
    text(this.name, this.position_x, this.position_y + 10);
  }
}
