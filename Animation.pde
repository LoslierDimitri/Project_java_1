class Animation {
  int position_x;
  int position_y;

  PImage tab_animation_idle[];
  int nb_animation_idle_actual;
  int nb_animation_idle;
  PImage tab_animation_walk[];
  int nb_animation_walk_actual;
  int nb_animation_walk;
  PImage tab_animation_attack[];
  int nb_animation_attack_actual;
  int nb_animation_attack;
  PImage tab_animation_die[];
  int nb_animation_die_actual;
  int nb_animation_die;

  String animation_actual;

  Animation(
    PImage x_tab_animation_idle[],
    int x_nb_animation_idle_actual,
    int x_nb_animation_idle,
    PImage x_tab_animation_walk[],
    int x_nb_animation_walk_actual,
    int x_nb_animation_walk,
    PImage x_tab_animation_attack[],
    int x_nb_animation_attack_actual,
    int x_nb_animation_attack,
    PImage x_tab_animation_die[],
    int x_nb_animation_die_actual,
    int x_nb_animation_die
    ) {
    this.tab_animation_idle = x_tab_animation_idle;
    this.nb_animation_idle_actual = x_nb_animation_idle_actual;
    this.nb_animation_idle = x_nb_animation_idle;
    this.tab_animation_walk = x_tab_animation_walk;
    this.nb_animation_walk_actual = x_nb_animation_walk_actual;
    this.nb_animation_walk = x_nb_animation_walk;
    this.tab_animation_attack = x_tab_animation_attack;
    this.nb_animation_attack_actual = x_nb_animation_attack_actual;
    this.nb_animation_attack = x_nb_animation_attack;
    this.tab_animation_die = x_tab_animation_die;
    this.nb_animation_die_actual = x_nb_animation_die_actual;
    this.nb_animation_die = x_nb_animation_die;

    this.position_x = 0;
    this.position_y = 0;
    this.animation_actual = "idle";
  }

  ///////////////////////////////////////////////////////////////getter
  ///////////////////////////////////////////////////////////////setter
  ///////////////////////////////////////////////////////////////function
  void update(String x_animation, int x_position_x, int x_position_y) {
    this.animation_actual = x_animation;
    this.position_x = x_position_x;
    this.position_y = x_position_y;

    if (this.animation_actual == "idle") {
      this.nb_animation_idle_actual = this.nb_animation_idle_actual + 1;
      if (this.nb_animation_idle_actual == this.nb_animation_idle) {
        this.nb_animation_idle_actual = 0;
      }
    }
    if (this.animation_actual == "walk") {
      this.nb_animation_walk_actual = this.nb_animation_walk_actual + 1;
      if (this.nb_animation_walk_actual == this.nb_animation_walk) {
        this.nb_animation_walk_actual = 0;
      }
    }
    if (this.animation_actual == "attack") {
      this.nb_animation_attack_actual = this.nb_animation_attack_actual + 1;
      if (this.nb_animation_attack_actual == this.nb_animation_attack) {
        this.nb_animation_attack_actual = 0;
      }
    }
    if (this.animation_actual == "die") {
      this.nb_animation_die_actual = this.nb_animation_die_actual + 1;
      if (this.nb_animation_die_actual == this.nb_animation_die) {
        this.nb_animation_die_actual = 0;
      }
    }
  }
  void display() {
    if (this.animation_actual == "idle") {
      image(tab_animation_idle[this.nb_animation_idle_actual], this.position_x, this.position_y);
    }
    if (this.animation_actual == "walk") {
      image(tab_animation_walk[this.nb_animation_walk_actual], this.position_x, this.position_y);
    }
    if (this.animation_actual == "attack") {
      image(tab_animation_attack[this.nb_animation_attack_actual], this.position_x, this.position_y);
    }
    if (this.animation_actual == "die") {
      image(tab_animation_die[this.nb_animation_die_actual], this.position_x, this.position_y);
    }
  }
}
