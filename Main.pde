class Main {
  private Player tab_player[];
  private int nb_player;
  private int nb_player_max;
  private boolean is_finished;
  private PImage background_1;
  private PImage background_2;
  private int player_win;
  private PImage background_menu;
  private PImage background_restart;

  Main(Player x_tab_player[], int x_nb_player, int x_nb_player_max, PImage x_background_1, PImage x_background_menu) {
    this.tab_player = x_tab_player;
    this.nb_player = x_nb_player;
    this.nb_player_max = x_nb_player_max;
    this.background_1 = x_background_1;
    this.background_1.resize(screen_size_x, screen_size_y);
    //this.background_2 = x_background_2;
    //this.background_2.resize(screen_size_x, screen_size_y);
    this.is_finished = false;
    this.background_menu = x_background_menu;
    this.background_menu.resize(screen_size_x / 100 * 60, screen_size_y/3);
    
  }

  ///////////////////////////////////////////////////////////////getter
  Player get_player(int x_player) {
    return this.tab_player[x_player];
  }
  int return_nb_player() {
    return this.nb_player;
  }
  boolean get_is_finished() {
    return is_finished;
  }
  int get_player_win(){
    return player_win;
  }

  ///////////////////////////////////////////////////////////////setter
  ///////////////////////////////////////////////////////////////function
  void remove_all_unit() {
    for (int i = 0; i < this.tab_player[0].get_nb_unit(); i++) {
      this.tab_player[0].remove_unit(0);
    }
    for (int i = 0; i < this.tab_player[1].get_nb_unit(); i++) {
      this.tab_player[1].remove_unit(0);
    }
  }

  void update() {
    println("Main: update: ...");

    if (this.tab_player[0].get_health_point() > 0 && this.tab_player[1].get_health_point() > 0) {

      //player 1 unit collide with player 1 unit
      for (int i = 0; i < this.tab_player[0].get_nb_unit(); i++) {
        for (int j = 0; j < this.tab_player[0].get_nb_unit(); j++) {
          if (i != j) {
            if (this.tab_player[0].get_unit(i).collide(this.tab_player[0].get_unit(j).get_collider(), 1) == true) {
              this.tab_player[0].get_unit(i).set_can_move(false);
            }
          }
        }
      }

      //player 2 unit collide with player 2 unit
      for (int i = 0; i < this.tab_player[1].get_nb_unit(); i++) {
        for (int j = 0; j < this.tab_player[1].get_nb_unit(); j++) {
          if (i != j) {
            if (this.tab_player[1].get_unit(i).collide(this.tab_player[1].get_unit(j).get_collider(), 2) == true) {
              this.tab_player[1].get_unit(i).set_can_move(false);
            }
          }
        }
      }

      //player 1 unit collide with player 2 unit
      //player unit damage player unit
      for (int i = 0; i < this.tab_player[0].get_nb_unit(); i++) {
        for (int j = 0; j < this.tab_player[1].get_nb_unit(); j++) {
          if (this.tab_player[0].get_unit(i).collide(this.tab_player[1].get_unit(j).get_collider(), 1) == true) {
            this.tab_player[0].get_unit(i).set_can_move(false);
            this.tab_player[1].get_unit(j).set_can_move(false);
            this.tab_player[0].get_unit(i).set_is_attack(true);
            this.tab_player[1].get_unit(j).set_is_attack(true);
            this.tab_player[0].get_unit(i).damage(this.tab_player[1].get_unit(j));
          }
          if (distance(this.tab_player[0].get_unit(i).get_position_x(), this.tab_player[1].get_unit(j).get_position_x()) <= this.tab_player[0].get_unit(i).get_range()) {
            this.tab_player[0].get_unit(i).damage(this.tab_player[1].get_unit(0));
          }
          if (distance(this.tab_player[0].get_unit(i).get_position_x(), (this.tab_player[1].get_collider().get_position_x() + (this.tab_player[1].get_collider().get_size_x() / 2))) <= this.tab_player[0].get_unit(i).get_range()) {
            this.tab_player[0].get_unit(i).damage_player(this.tab_player[1]);
          }
          if (this.tab_player[1].get_unit(j).collide(this.tab_player[0].get_unit(i).get_collider(), 2) == true) {
            this.tab_player[0].get_unit(i).set_can_move(false);
            this.tab_player[1].get_unit(j).set_can_move(false);
            this.tab_player[0].get_unit(i).set_is_attack(true);
            this.tab_player[1].get_unit(j).set_is_attack(true);
            this.tab_player[1].get_unit(j).damage(this.tab_player[0].get_unit(i));
          }
          if (distance(this.tab_player[1].get_unit(j).get_position_x(), this.tab_player[0].get_unit(i).get_position_x()) <= this.tab_player[1].get_unit(j).get_range()) {
            this.tab_player[1].get_unit(j).damage(this.tab_player[0].get_unit(0));
          }
          if (distance(this.tab_player[1].get_unit(j).get_position_x(), (this.tab_player[0].get_collider().get_position_x() + (this.tab_player[0].get_collider().get_size_x() / 2))) <= this.tab_player[1].get_unit(j).get_range()) {
            this.tab_player[1].get_unit(j).damage_player(this.tab_player[0]);
          }
        }
      }

      //unit attack base
      //player 1 to player 2
      for (int i = 0; i < this.tab_player[0].get_nb_unit(); i++) {
        if (this.tab_player[0].get_unit(i).get_collider().collide(this.tab_player[1].get_collider(), 1) == true) {
          this.tab_player[0].get_unit(i).damage_player(this.tab_player[1]);
          this.tab_player[0].get_unit(0).set_can_move(false);
          this.tab_player[0].get_unit(i).set_is_attack(true);
        }
      }
      //player 2 to player 1
      for (int j = 0; j < this.tab_player[1].get_nb_unit(); j++) {
        if (this.tab_player[1].get_unit(j).get_collider().collide(this.tab_player[0].get_collider(), 2) == true) {
          this.tab_player[1].get_unit(j).damage_player(this.tab_player[0]);
          this.tab_player[1].get_unit(0).set_can_move(false);
          this.tab_player[1].get_unit(j).set_is_attack(true);
        }
      }

      //turret attack unit
      //player 1 to player 2
      for (int i = 0; i < this.tab_player[0].get_nb_turret(); i++) {
        for (int j = 0; j < this.tab_player[1].get_nb_unit(); j++) {
          if (distance(this.tab_player[0].get_turret(i).get_position_x(), this.tab_player[1].get_unit(j).get_position_x()) <= this.tab_player[0].get_turret(i).get_range()) {
            this.tab_player[0].get_turret(i).damage(this.tab_player[1].get_unit(0));
            this.tab_player[0].get_turret(i).set_is_attack(true);
          }
        }
      }
      //player 2 to player 1
      for (int i = 0; i < this.tab_player[1].get_nb_turret(); i++) {
        for (int j = 0; j < this.tab_player[0].get_nb_unit(); j++) {
          if (distance(this.tab_player[1].get_turret(i).get_position_x(), this.tab_player[0].get_unit(j).get_position_x()) <= this.tab_player[1].get_turret(i).get_range()) {
            this.tab_player[1].get_turret(i).damage(this.tab_player[0].get_unit(0));
            this.tab_player[1].get_turret(i).set_is_attack(true);
          }
        }
      }

      //power collide with player 2 unit
      for (int i = 0; i < this.tab_player[0].get_nb_projectile(); i++) {
        for (int j = 0; j < this.tab_player[1].get_nb_unit(); j++) {
          if (this.tab_player[0].get_projectile(i).get_used() == false && this.tab_player[0].get_projectile(i).collide_total(this.tab_player[1].get_unit(j).get_collider(), 1) == true) {
            this.tab_player[0].get_projectile(i).damage(this.tab_player[1].get_unit(j));
            this.tab_player[0].get_projectile(i).set_used(true);
          }
        }
      }

      for (int i = 0; i < this.nb_player; i++) {
        tab_player[i].update(this);
      }
    }

    //end of game
    if (this.tab_player[0].get_health_point() <= 0) {
      this.is_finished = true;
      this.player_win = 2;
    }
    if (this.tab_player[1].get_health_point() <= 0) {
      this.is_finished = true;
      this.player_win = 1;
    }

    //loop sound
    if (main_music.position()>=main_music.length()) {
      main_music.rewind();
    }

    println("Main: update: done");
  }
  void display() {
    println("Main: display: ...");
    image(this.background_1, 0, 0);
    for (int i = 0; i < this.nb_player; i++) {
      tab_player[i].display();
    }
    /*image(this.background_2, 0, 0);
    println("Main: display: done");
    */
  }
  
  void display_menu(){
    int logo_size_x = screen_size_x/2;
    int logo_size_y = screen_size_y/3;
    int logo_position_x = screen_size_x - (screen_size_x /100 * 55) - (logo_size_x / 2);;
    int logo_position_y = screen_size_y /100 * 10;
    image(this.background_menu, logo_position_x, logo_position_y);
  }
  
  void display_restart(){
  }
}
