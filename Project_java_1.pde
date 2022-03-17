import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

///////////////////////////////////////////////////////////////setup
void setup() {
  fullScreen(P2D);
  //size(600, 600, P2D);
  frameRate(30);

  minim = new Minim(this);
}

///////////////////////////////////////////////////////////////screen parameter
int screen_size_x;
int screen_size_y;
int frame_rate;
int frame = 0;

///////////////////////////////////////////////////////////////initialisation
boolean initialisation_done = false;
boolean remove_turret_mode = false;

///////////////////////////////////////////////////////////////global variable
int animation_speed = 10;
int status = 0; //0 = menu, 1 = game, 2 = endgame
///////////////////////////////////////////////////////////////music
AudioPlayer main_music;
AudioPlayer menu_music;
AudioPlayer endgame_music;

///////////////////////////////////////////////////////////////unit
Unit unit_1;
Unit unit_2;
Unit unit_3;

Unit unit_11;
Unit unit_12;
Unit unit_13;

Unit unit_21;
Unit unit_22;
Unit unit_23;

Unit unit_31;
Unit unit_32;
Unit unit_33;

Unit unit_41;
Unit unit_42;
Unit unit_43;

Unit unit_51;
Unit unit_52;
Unit unit_53;

///////////////////////////////////////////////////////////////turret
Turret turret_1;
Turret turret_2;
Turret turret_3;

Turret turret_11;
Turret turret_12;
Turret turret_13;

Turret turret_21;
Turret turret_22;
Turret turret_23;

Turret turret_31;
Turret turret_32;
Turret turret_33;

Turret turret_41;
Turret turret_42;
Turret turret_43;

Turret turret_51;
Turret turret_52;
Turret turret_53;

///////////////////////////////////////////////////////////////player
Player player_1;
Player player_2;

Player tab_player[] = new Player[2];

///////////////////////////////////////////////////////////////main
Main main;

///////////////////////////////////////////////////////////////button
Button button_unit_1;
Button button_unit_2;
Button button_unit_3;

Button button_turret_1;
Button button_turret_2;
Button button_turret_3;

Button button_remove_turret;
Button button_turret_add_max;

Button button_remove_turret_1;
Button button_remove_turret_2;
Button button_remove_turret_3;
Button button_remove_turret_4;

Button button_add_period;

Button button_power;

Button button_display_unit;

Button button_play;

Button button_restart;

///////////////////////////////////////////////////////////////draw
void draw() {
  if (status ==0) {
    if (initialisation_done == false) {
      initialisation();
      initialisation_done = true;
    }
    menu_loop();
  }
  if (status == 1) {
    game_loop();
  }
  if (status == 2) {
    endgame_loop();
    initialisation_done = false;
  }

  ///////////////////////////////////////////////////////////////reset
  reset();
}
