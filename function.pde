///////////////////////////////////////////////////////////////reset
void reset() {
  mouse_click = false;
  mouse_x = mouseX;
  mouse_y = mouseY;
}

///////////////////////////////////////////////////////////////distance
int distance(int x_position_1, int x_position_2) {
  int result = 0;

  result = x_position_2 - x_position_1;
  if (result < 0) {
    result = result * (-1);
  }

  return result;
}

Animation load_animation(String x_unit_turret_base) {
  File file;
  String listPath[];

  //idle
  file = new File(dataPath(x_unit_turret_base + "Idle/"));
  listPath = file.list();

  int nb_animation_idle = listPath.length;
  PImage tab_to_add_idle[] = new PImage[nb_animation_idle];
  for (int i = 0; i < nb_animation_idle; i++) {
    tab_to_add_idle[i] = loadImage(x_unit_turret_base + "Idle/" + "idle_" + (i+1) + ".png");
  }

  //walk
  file = new File(dataPath(x_unit_turret_base + "Walk"));
  listPath = file.list();

  int nb_animation_walk = listPath.length;
  PImage tab_to_add_walk[] = new PImage[nb_animation_walk];
  for (int i = 0; i < nb_animation_walk; i++) {
    tab_to_add_walk[i] = loadImage(x_unit_turret_base + "Walk/" + "walk_" + (i+1) + ".png");
  }

  //attack
  file = new File(dataPath(x_unit_turret_base + "Attack"));
  listPath = file.list();

  int nb_animation_attack = listPath.length;
  PImage tab_to_add_attack[] = new PImage[nb_animation_attack];
  for (int i = 0; i < nb_animation_attack; i++) {
    tab_to_add_attack[i] = loadImage(x_unit_turret_base + "Attack/" + "attack_" + (i+1) + ".png");
  }

  //die
  file = new File(dataPath(x_unit_turret_base + "Die"));
  listPath = file.list();

  int nb_animation_die = listPath.length;
  PImage tab_to_add_die[] = new PImage[nb_animation_die];
  for (int i = 0; i < nb_animation_die; i++) {
    tab_to_add_die[i] = loadImage(x_unit_turret_base + "Die/" + "die_" + (i+1) + ".png");
  }

  Animation x_animation = new Animation();

  x_animation.set_animation_idle(tab_to_add_idle, nb_animation_idle);
  x_animation.set_animation_walk(tab_to_add_walk, nb_animation_walk);
  x_animation.set_animation_attack(tab_to_add_attack, nb_animation_attack);
  x_animation.set_animation_die(tab_to_add_die, nb_animation_die);

  return x_animation;
}

void game_loop() {
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

    ///////////////////////////////////////////////////////////////AI
    ai(main);

    ///////////////////////////////////////////////////////////////main update
    main.update();
  } else {
    main.remove_all_unit();
    if (main.get_player(0).get_health_point() <= 0) {
      //text("player 2 win", 700, 500);
      status = 2;
    }
    if (main.get_player(1).get_health_point() <= 0) {
      //text("player 1 win", 700, 500);
      status = 2;
    }
    main_music.close();
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
  button_display_unit.display();

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
  cursor(ARROW);

  ///////////////////////////////////////////////////////////////music
  main_music.play();
}

void menu_loop() {
  background(255);
  main.display_menu();
  button_play.display();

  if (button_play.collide(mouse_x, mouse_y) == true) {
    cursor(HAND);
    if (mouse_click == true) {
      status=1;
      menu_music.close();
    }
  } else {
    cursor(ARROW);
  }

  ///////////////////////////////////////////////////////////////music
  menu_music.play();
}

void endgame_loop() {
  button_restart.display();
  if (main.get_player_win() == 1) {
    text("Player 1 win", 100, 100);
    if (button_restart.collide(mouse_x, mouse_y) == true) {
      cursor(HAND);
      if (mouse_click == true) {
        status=0;
        endgame_music.close();
      }
    }
  } else {
    cursor(ARROW);
  }

  if (main.get_player_win() == 2) {
    text("Player 2 win", 100, 100);
    if (button_restart.collide(mouse_x, mouse_y) == true) {
      cursor(HAND);
      if (mouse_click == true) {
        status=0;
        endgame_music.close();
      }
    }
  } else {
    cursor(ARROW);
  }

  ///////////////////////////////////////////////////////////////music
  endgame_music.play();
}
