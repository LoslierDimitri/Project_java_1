class Main {
  Player tab_player[];
  int nb_player;
  int nb_player_max;

  boolean is_finished;

  Main(Player x_tab_player[], int x_nb_player, int x_nb_player_max) {
    this.tab_player = x_tab_player;
    this.nb_player = x_nb_player;
    this.nb_player_max = x_nb_player_max;

    this.is_finished = false;
  }

  void update() {
    println("Main: update: ...");

    if (this.tab_player[0].health_point > 0 && this.tab_player[1].health_point > 0) {

      //player 1 unit collide with player 1 unit
      for (int i = 0; i < this.tab_player[0].nb_unit; i++) {
        for (int j = 0; j < this.tab_player[0].nb_unit; j++) {
          if (i != j) {
            if (this.tab_player[0].tab_unit[i].collide(this.tab_player[0].tab_unit[j].collider, 1) == true) {
              this.tab_player[0].tab_unit[i].can_move = false;
              //this.tab_player[0].tab_unit[j].can_move = false;
            }
          }
        }
      }

      //player 2 unit collide with player 2 unit
      for (int i = 0; i < this.tab_player[1].nb_unit; i++) {
        for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
          if (i != j) {
            if (this.tab_player[1].tab_unit[i].collide(this.tab_player[1].tab_unit[j].collider, 2) == true) {
              this.tab_player[1].tab_unit[i].can_move = false;
              //this.tab_player[1].tab_unit[j].can_move = false;
            }
          }
        }
      }

      //player 1 unit collide with player 2 unit
      //player unit damage player unit
      for (int i = 0; i < this.tab_player[0].nb_unit; i++) {
        for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
          if (this.tab_player[0].tab_unit[i].collide(this.tab_player[1].tab_unit[j].collider, 1) == true) {
            this.tab_player[0].tab_unit[i].can_move = false;
            this.tab_player[1].tab_unit[j].can_move = false;

            this.tab_player[0].tab_unit[i].damage(this.tab_player[1].tab_unit[j], this.tab_player[0].tab_unit[i].damage);
          }
          if (this.tab_player[1].tab_unit[j].collide(this.tab_player[0].tab_unit[i].collider, 2) == true) {
            this.tab_player[0].tab_unit[i].can_move = false;
            this.tab_player[1].tab_unit[j].can_move = false;

            this.tab_player[1].tab_unit[j].damage(this.tab_player[0].tab_unit[i], this.tab_player[1].tab_unit[j].damage);
          }
        }
      }

      for (int i = 0; i < this.tab_player[0].nb_unit; i++) {
        for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
          if (distance(this.tab_player[0].tab_unit[i].position_x, this.tab_player[1].tab_unit[j].position_x) <= this.tab_player[0].tab_unit[i].range) {
            this.tab_player[0].tab_unit[i].damage(this.tab_player[1].tab_unit[0], this.tab_player[0].tab_unit[i].damage);
          }
          if (distance(this.tab_player[1].tab_unit[j].position_x, this.tab_player[0].tab_unit[i].position_x) <= this.tab_player[1].tab_unit[j].range) {
            this.tab_player[1].tab_unit[j].damage(this.tab_player[0].tab_unit[0], this.tab_player[1].tab_unit[j].damage);
          }
        }
      }

      for (int i = 0; i < this.tab_player[0].nb_unit; i++) {
        if (this.tab_player[0].tab_unit[i].collider.collide(this.tab_player[1].collider, 1) == true) {
          this.tab_player[0].tab_unit[i].damage_player(this.tab_player[1], this.tab_player[0].tab_unit[i].damage);
          this.tab_player[0].tab_unit[0].can_move = false;
        }
      }
      for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
        if (this.tab_player[1].tab_unit[j].collider.collide(this.tab_player[0].collider, 2) == true) {
          this.tab_player[1].tab_unit[j].damage_player(this.tab_player[0], this.tab_player[1].tab_unit[j].damage);
          this.tab_player[1].tab_unit[0].can_move = false;
        }
      }

      for (int i = 0; i < this.tab_player[0].nb_turret; i++) {
        for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
          if (distance(this.tab_player[0].tab_turret[i].position_x, this.tab_player[1].tab_unit[j].position_x) <= this.tab_player[0].tab_turret[i].range) {
            this.tab_player[0].tab_turret[i].damage(this.tab_player[1].tab_unit[0], this.tab_player[0].tab_turret[i].damage);
          }
        }
      }
      for (int i = 0; i < this.tab_player[1].nb_turret; i++) {
        for (int j = 0; j < this.tab_player[0].nb_unit; j++) {
          if (distance(this.tab_player[1].tab_turret[i].position_x, this.tab_player[0].tab_unit[j].position_x) <= this.tab_player[1].tab_turret[i].range) {
            this.tab_player[1].tab_turret[i].damage(this.tab_player[0].tab_unit[0], this.tab_player[1].tab_turret[i].damage);
          }
        }
      }

      //power collide with player 2 unit
      for (int i = 0; i < this.tab_player[0].nb_projectile; i++) {
        for (int j = 0; j < this.tab_player[1].nb_unit; j++) {
          if (this.tab_player[0].tab_projectile[i].used == false && this.tab_player[0].tab_projectile[i].collide_total(this.tab_player[1].tab_unit[j].collider, 1) == true) {
            this.tab_player[0].tab_projectile[i].damage(this.tab_player[1].tab_unit[j], this.tab_player[0].tab_projectile[i].damage);
            this.tab_player[0].tab_projectile[i].used = true;
          }
        }
      }

      for (int i = 0; i < this.nb_player; i++) {
        tab_player[i].update(this);
      }
    }
    if (this.tab_player[0].health_point <= 0) {
      textSize(50);
      text("player 2 win", 0, 600);
      this.is_finished = true;
    }
    if (this.tab_player[1].health_point <= 0) {
      textSize(50);
      text("player 1 win", 0, 600);
      this.is_finished = true;
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
