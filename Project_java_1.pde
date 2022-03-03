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
  //size(1000, 600, P2D);
  frameRate(60);

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
int animation_speed = 20;

///////////////////////////////////////////////////////////////music
AudioPlayer main_music;

///////////////////////////////////////////////////////////////sound


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

///////////////////////////////////////////////////////////////draw
void draw() {
  ///////////////////////////////////////////////////////////////initialisation
  if (initialisation_done == false) {
    initialisation();
    initialisation_done = true;
  }
  frame = frame + 1;
  println("frame: " + frame);

  background(150);

  ///////////////////////////////////////////////////////////////game loop
  if (main.get_is_finished() == false) {

    ///////////////////////////////////////////////////////////////input
    if (mouse_click == true) {
      ///////////////////////////////////////////////////////////////unit
      if (button_unit_1.collide(mouse_x, mouse_y) == true) {
        if (main.get_player(0).get_period() == 1) {
          button_unit_1.add_unit(main, unit_1);
        }
        if (main.get_player(0).get_period() == 2) {
          button_unit_1.add_unit(main, unit_11);
        }
        if (main.get_player(0).get_period() == 3) {
          button_unit_1.add_unit(main, unit_21);
        }
        if (main.get_player(0).get_period() == 4) {
          button_unit_1.add_unit(main, unit_31);
        }
        if (main.get_player(0).get_period() == 5) {
          button_unit_1.add_unit(main, unit_41);
        }
        if (main.get_player(0).get_period() == 6) {
          button_unit_1.add_unit(main, unit_51);
        }
      }
      if (button_unit_2.collide(mouse_x, mouse_y) == true) {
        if (main.get_player(0).get_period() == 1) {
          button_unit_2.add_unit(main, unit_2);
        }
        if (main.get_player(0).get_period() == 2) {
          button_unit_2.add_unit(main, unit_12);
        }
        if (main.get_player(0).get_period() == 3) {
          button_unit_2.add_unit(main, unit_22);
        }
        if (main.get_player(0).get_period() == 4) {
          button_unit_2.add_unit(main, unit_32);
        }
        if (main.get_player(0).get_period() == 5) {
          button_unit_2.add_unit(main, unit_42);
        }
        if (main.get_player(0).get_period() == 6) {
          button_unit_2.add_unit(main, unit_52);
        }
      }
      if (button_unit_3.collide(mouse_x, mouse_y) == true) {
        if (main.get_player(0).get_period() == 1) {
          button_unit_3.add_unit(main, unit_3);
        }
        if (main.get_player(0).get_period() == 2) {
          button_unit_3.add_unit(main, unit_13);
        }
        if (main.get_player(0).get_period() == 3) {
          button_unit_3.add_unit(main, unit_23);
        }
        if (main.get_player(0).get_period() == 4) {
          button_unit_3.add_unit(main, unit_33);
        }
        if (main.get_player(0).get_period() == 5) {
          button_unit_3.add_unit(main, unit_43);
        }
        if (main.get_player(0).get_period() == 6) {
          button_unit_3.add_unit(main, unit_53);
        }
      }

      ///////////////////////////////////////////////////////////////turret
      if (button_turret_1.collide(mouse_x, mouse_y) == true) {
        if (main.get_player(0).get_period() == 1) {
          button_turret_1.add_turret(main, turret_1);
        }
        if (main.get_player(0).get_period() == 2) {
          button_turret_1.add_turret(main, turret_11);
        }
        if (main.get_player(0).get_period() == 3) {
          button_turret_1.add_turret(main, turret_21);
        }
        if (main.get_player(0).get_period() == 4) {
          button_turret_1.add_turret(main, turret_31);
        }
        if (main.get_player(0).get_period() == 5) {
          button_turret_1.add_turret(main, turret_41);
        }
        if (main.get_player(0).get_period() == 6) {
          button_turret_1.add_turret(main, turret_51);
        }
      }
      if (button_turret_2.collide(mouse_x, mouse_y) == true) {
        if (main.get_player(0).get_period() == 1) {
          button_turret_2.add_turret(main, turret_2);
        }
        if (main.get_player(0).get_period() == 2) {
          button_turret_2.add_turret(main, turret_12);
        }
        if (main.get_player(0).get_period() == 3) {
          button_turret_2.add_turret(main, turret_22);
        }
        if (main.get_player(0).get_period() == 4) {
          button_turret_2.add_turret(main, turret_32);
        }
        if (main.get_player(0).get_period() == 5) {
          button_turret_2.add_turret(main, turret_42);
        }
        if (main.get_player(0).get_period() == 6) {
          button_turret_2.add_turret(main, turret_52);
        }
      }
      if (button_turret_3.collide(mouse_x, mouse_y) == true) {
        if (main.get_player(0).get_period() == 1) {
          button_turret_3.add_turret(main, turret_3);
        }
        if (main.get_player(0).get_period() == 2) {
          button_turret_3.add_turret(main, turret_13);
        }
        if (main.get_player(0).get_period() == 3) {
          button_turret_3.add_turret(main, turret_23);
        }
        if (main.get_player(0).get_period() == 4) {
          button_turret_3.add_turret(main, turret_33);
        }
        if (main.get_player(0).get_period() == 5) {
          button_turret_3.add_turret(main, turret_43);
        }
        if (main.get_player(0).get_period() == 6) {
          button_turret_3.add_turret(main, turret_53);
        }
      }

      ///////////////////////////////////////////////////////////////remove turret
      if (remove_turret_mode == true ) {
        if (button_remove_turret_1.collide(mouse_x, mouse_y) == true) {
          button_remove_turret_1.remove_turret(main, 1);
        }
        if (button_remove_turret_2.collide(mouse_x, mouse_y) == true) {
          button_remove_turret_2.remove_turret(main, 2);
        }
        if (button_remove_turret_3.collide(mouse_x, mouse_y) == true) {
          button_remove_turret_3.remove_turret(main, 3);
        }
        if (button_remove_turret_4.collide(mouse_x, mouse_y) == true) {
          button_remove_turret_4.remove_turret(main, 4);
        }
      }

      ///////////////////////////////////////////////////////////////change mode remove turret
      if (button_remove_turret.collide(mouse_x, mouse_y) == true) {
        if (remove_turret_mode == false) {
          remove_turret_mode = true;
        } else {
          remove_turret_mode = false;
        }
      }

      ///////////////////////////////////////////////////////////////add period
      if (button_add_period.collide(mouse_x, mouse_y) == true) {
        button_add_period.add_period(main);
      }

      ///////////////////////////////////////////////////////////////add turret max
      if (button_turret_add_max.collide(mouse_x, mouse_y) == true) {
        button_add_period.add_turret_max(main);
      }

      ///////////////////////////////////////////////////////////////power
      if (button_power.collide(mouse_x, mouse_y) == true) {
        button_power.power(main);
      }
    }

    ///////////////////////////////////////////////////////////////mouse hover button
    if (button_unit_1.collide(mouse_x, mouse_y) == true) {
      button_unit_1.display_unit(main, 1, button_display_unit);
    }
    if (button_unit_2.collide(mouse_x, mouse_y) == true) {
      button_unit_2.display_unit(main, 2, button_display_unit);
    }
    if (button_unit_3.collide(mouse_x, mouse_y) == true) {
      button_unit_3.display_unit(main, 3, button_display_unit);
    }
    if (button_turret_1.collide(mouse_x, mouse_y) == true) {
      button_turret_1.display_turret(main, 1, button_display_unit);
    }
    if (button_turret_2.collide(mouse_x, mouse_y) == true) {
      button_turret_2.display_turret(main, 2, button_display_unit);
    }
    if (button_turret_3.collide(mouse_x, mouse_y) == true) {
      button_turret_3.display_turret(main, 3, button_display_unit);
    }

    ///////////////////////////////////////////////////////////////AI
    ai(main);

    ///////////////////////////////////////////////////////////////main update
    main.update();
  } else {
    main.remove_all_unit();
    if (main.get_player(0).get_health_point() <= 0) {
    }
    if (main.get_player(1).get_health_point() <= 0) {
    }
  }

  ///////////////////////////////////////////////////////////////reset game
  if (input_space == true) {
    initialisation_done = false;
  }

  ///////////////////////////////////////////////////////////////exit program
  if (input_a == true) {
    main_music.close();
    minim.stop();
    super.stop();
    exit();
  }
  text("" + remove_turret_mode, 500, 500);

  ///////////////////////////////////////////////////////////////main display
  main.display();

  ///////////////////////////////////////////////////////////////button display
  button_unit_1.display();
  button_unit_2.display();
  button_unit_3.display();
  button_turret_1.display();
  button_turret_2.display();
  button_turret_3.display();
  button_remove_turret.display();
  button_turret_add_max.display();
  button_add_period.display();
  button_power.display();

  ///////////////////////////////////////////////////////////////reset
  reset();
}
