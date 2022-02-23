class Main {
  Player tab_player[];
  int nb_player;
  int nb_player_max;

  Main(Player x_tab_player[], int x_nb_player, int x_nb_player_max) {
    this.tab_player = x_tab_player;
    this.nb_player = x_nb_player;
    this.nb_player_max = x_nb_player_max;
  }

  void update() {
    println("Main: update: ...");
    for (int i = 0; i < this.nb_player; i++) {
      tab_player[i].update();
    }

    for (int i = 0; i < this.tab_player[0].nb_unit; i++) {
      for (int j = 0; j < this.tab_player[0].nb_unit; j++) {
        if (i != j) {
          if (this.tab_player[0].tab_unit[i].collide(this.tab_player[0].tab_unit[j].collider) == true) {
            this.tab_player[0].tab_unit[i].can_move = false;
            this.tab_player[0].tab_unit[j].can_move = false;
            this.tab_player[0].tab_unit[0].can_move = true;
          }
        }
      }
    }

    for (int i = 0; i < this.tab_player[1].nb_unit; i++) {
      for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
        if (i != j) {
          if (this.tab_player[1].tab_unit[i].collide(this.tab_player[1].tab_unit[j].collider) == true) {
            this.tab_player[1].tab_unit[i].can_move = false;
            this.tab_player[1].tab_unit[j].can_move = false;
          }
        }
      }
    }

    for (int i = 0; i < this.tab_player[0].nb_unit; i++) {
      for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
        if (this.tab_player[0].tab_unit[i].collide(this.tab_player[1].tab_unit[j].collider) == true) {
          this.tab_player[0].tab_unit[i].can_move = false;
          this.tab_player[1].tab_unit[j].can_move = false;
        }
      }
    }
    println("Main: update: done");
  }
  void display() {
    println("Main: display: ...");
    for (int i = 0; i < this.nb_player; i++) {
      tab_player[i].display();
    }
    println("Main: display: done");
  }
}
