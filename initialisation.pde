void initialisation() {
  ///////////////////////////////////////////////////////////////screen
  screen_size_x = width;
  screen_size_y = height;
  frame_rate = 60;

  ///////////////////////////////////////////////////////////////animation unit
  animation_unit_1 = new Animation();
  animation_unit_2 = new Animation();
  animation_unit_3 = new Animation();

  animation_unit_11 = new Animation();
  animation_unit_12 = new Animation();
  animation_unit_13 = new Animation();

  animation_unit_21 = new Animation();
  animation_unit_22 = new Animation();
  animation_unit_23 = new Animation();

  animation_unit_31 = new Animation();
  animation_unit_32 = new Animation();
  animation_unit_33 = new Animation();

  animation_unit_41 = new Animation();
  animation_unit_42 = new Animation();
  animation_unit_43 = new Animation();

  animation_unit_51 = new Animation();
  animation_unit_52 = new Animation();
  animation_unit_53 = new Animation();

  ///////////////////////////////////////////////////////////////animation turret
  animation_turret_1 = new Animation();
  animation_turret_2 = new Animation();
  animation_turret_3 = new Animation();

  animation_turret_11 = new Animation();
  animation_turret_12 = new Animation();
  animation_turret_13 = new Animation();

  animation_turret_21 = new Animation();
  animation_turret_22 = new Animation();
  animation_turret_23 = new Animation();

  animation_turret_31 = new Animation();
  animation_turret_32 = new Animation();
  animation_turret_33 = new Animation();

  animation_turret_41 = new Animation();
  animation_turret_42 = new Animation();
  animation_turret_43 = new Animation();

  animation_turret_51 = new Animation();
  animation_turret_52 = new Animation();
  animation_turret_53 = new Animation();

  ///////////////////////////////////////////////////////////////load animation unit
  load_animation("Unit/Unit_1/");
  load_animation("Unit/Unit_2/");
  load_animation("Unit/Unit_3/");

  load_animation("Unit/Unit_11/");
  load_animation("Unit/Unit_12/");
  load_animation("Unit/Unit_13/");

  load_animation("Unit/Unit_21/");
  load_animation("Unit/Unit_21/");
  load_animation("Unit/Unit_21/");

  load_animation("Unit/Unit_31/");
  load_animation("Unit/Unit_31/");
  load_animation("Unit/Unit_31/");

  load_animation("Unit/Unit_41/");
  load_animation("Unit/Unit_41/");
  load_animation("Unit/Unit_41/");

  load_animation("Unit/Unit_51/");
  load_animation("Unit/Unit_51/");
  load_animation("Unit/Unit_51/");

  ///////////////////////////////////////////////////////////////load animation turret

  ///////////////////////////////////////////////////////////////unit
  //name, collider(size_x, size_y), health_point, damage, speed, range, cost
  unit_1 = new Unit(new Collider(20, 50), 100, 1, 5, 10, 50, animation_unit_1);
  unit_2 = new Unit(new Collider(30, 40), 110, 2, 4, 150, 150, animation_unit_2);
  unit_3 = new Unit(new Collider(40, 40), 300, 5, 3, 30, 300, animation_unit_3);

  unit_11 = new Unit(new Collider(20, 40), 200, 3, 5, 10, 200, animation_unit_11);
  unit_12 = new Unit(new Collider(20, 50), 250, 8, 4, 150, 400, animation_unit_12);
  unit_13 = new Unit(new Collider(50, 40), 800, 13, 3, 30, 650, animation_unit_12);

  unit_21 = new Unit(new Collider(20, 40), 200, 10, 5, 10, 400, animation_unit_21);
  unit_22 = new Unit(new Collider(20, 50), 250, 16, 4, 150, 600, animation_unit_22);
  unit_23 = new Unit(new Collider(50, 40), 800, 20, 3, 30, 850, animation_unit_23);

  unit_31 = new Unit(new Collider(20, 40), 200, 18, 5, 10, 800, animation_unit_31);
  unit_32 = new Unit(new Collider(20, 50), 250, 22, 4, 150, 1200, animation_unit_32);
  unit_33 = new Unit(new Collider(50, 40), 800, 26, 3, 40, 1650, animation_unit_33);

  unit_41 = new Unit(new Collider(20, 40), 200, 24, 5, 60, 1600, animation_unit_41);
  unit_42 = new Unit(new Collider(20, 50), 250, 29, 4, 150, 1900, animation_unit_42);
  unit_43 = new Unit(new Collider(50, 40), 800, 33, 3, 50, 2400, animation_unit_43);

  unit_51 = new Unit(new Collider(20, 40), 200, 31, 5, 60, 2200, animation_unit_51);
  unit_52 = new Unit(new Collider(20, 50), 250, 36, 4, 150, 2600, animation_unit_52);
  unit_53 = new Unit(new Collider(50, 40), 800, 40, 3, 50, 3000, animation_unit_53);

  ///////////////////////////////////////////////////////////////turret
  //name, position_x, position_y, size_x, size_y, damage, range, cost
  turret_1 = new Turret(0, 0, 0, 0, 1, 200, 200);
  turret_2 = new Turret(0, 0, 0, 0, 2, 250, 400);
  turret_3 = new Turret(0, 0, 0, 0, 5, 300, 500);

  turret_11 = new Turret(0, 0, 0, 0, 3, 200, 400);
  turret_12 = new Turret(0, 0, 0, 0, 8, 250, 500);
  turret_13 = new Turret(0, 0, 0, 0, 13, 300, 800);

  turret_21 = new Turret(0, 0, 0, 0, 10, 200, 400);
  turret_22 = new Turret(0, 0, 0, 0, 16, 250, 500);
  turret_23 = new Turret(0, 0, 0, 0, 20, 300, 800);

  turret_31 = new Turret(0, 0, 0, 0, 18, 200, 400);
  turret_32 = new Turret(0, 0, 0, 0, 22, 250, 500);
  turret_33 = new Turret(0, 0, 0, 0, 26, 300, 800);

  turret_41 = new Turret(0, 0, 0, 0, 24, 200, 400);
  turret_42 = new Turret(0, 0, 0, 0, 29, 250, 500);
  turret_43 = new Turret(0, 0, 0, 0, 33, 300, 800);

  turret_51 = new Turret(0, 0, 0, 0, 31, 200, 400);
  turret_52 = new Turret(0, 0, 0, 0, 36, 250, 500);
  turret_53 = new Turret(0, 0, 0, 0, 40, 300, 800);

  ///////////////////////////////////////////////////////////////player
  //number, health_point, collider(size_x, size_y), position_x, position_y, money
  int player_1_size_x = 100;
  int player_1_size_y = 200;
  int player_1_position_x = 0;
  int player_1_position_y = screen_size_y / 2;
  int player_1_health_point = 1000;
  int player_1_money = 1000;
  player_1 = new Player(1, player_1_health_point, new Collider(player_1_size_x, player_1_size_y), player_1_position_x, player_1_position_y, player_1_money);

  int player_2_size_x = 100;
  int player_2_size_y = 200;
  int player_2_position_x = screen_size_x - player_2_size_x;
  int player_2_position_y = screen_size_y / 2;
  int player_2_health_point = 1000;
  int player_2_money = 1000;
  player_2 = new Player(2, player_2_health_point, new Collider(player_2_size_x, player_2_size_y), player_2_position_x, player_2_position_y, player_2_money);

  tab_player[0] = player_1;
  tab_player[1] = player_2;

  ///////////////////////////////////////////////////////////////main
  main = new Main(tab_player, 2, 2);

  ///////////////////////////////////////////////////////////////button
  int button_interval_x = 10;
  int button_interval_y = 10;

  int button_unit_size_x = screen_size_x / 100 * 5;
  int button_unit_size_y = screen_size_x / 100 * 5;
  int button_unit_1_position_x = screen_size_x - (button_unit_size_x * 3) - (button_interval_x * 3);
  int button_unit_1_position_y = button_interval_y;
  int button_unit_2_position_x = screen_size_x - (button_unit_size_x * 2) - (button_interval_x * 2);
  int button_unit_2_position_y = button_interval_y;
  int button_unit_3_position_x = screen_size_x - (button_unit_size_x * 1) - (button_interval_x * 1);
  int button_unit_3_position_y = button_interval_y;

  int button_turret_size_x = screen_size_x / 100 * 5;
  int button_turret_size_y = screen_size_x / 100 * 5;
  int button_turret_1_position_x = button_interval_x * 1 + button_turret_size_x * 0;
  int button_turret_1_position_y = button_interval_y;
  int button_turret_2_position_x = button_interval_x * 2 + button_turret_size_x * 1;
  int button_turret_2_position_y = button_interval_y;
  int button_turret_3_position_x = button_interval_x * 3 + button_turret_size_x * 2;
  int button_turret_3_position_y = button_interval_y;

  int button_turret_remove_mode_size_x = screen_size_x / 100 * 5;
  int button_turret_remove_mode_size_y = screen_size_x / 100 * 5;
  int button_turret_remove_mode_position_x = button_interval_x;
  int button_turret_remove_mode_position_y = button_interval_y * 2 + button_turret_remove_mode_size_x * 1;

  int button_turret_to_add_size_x = 20;
  int button_turret_to_add_size_y = 20;
  int button_turret_to_add_decal = 10;

  int button_turret_add_max_size_x = screen_size_x / 100 * 5;
  int button_turret_add_max_size_y = screen_size_x / 100 * 5;
  int button_turret_add_max_position_x = button_interval_x * 2 + button_turret_add_max_size_x * 1;
  int button_turret_add_max_position_y = button_interval_y * 2 + button_turret_add_max_size_x * 1;

  int button_add_period_size_x = screen_size_x / 100 * 5;
  int button_add_period_size_y = screen_size_x / 100 * 5;
  int button_add_period_position_x = button_interval_x * 3 + button_add_period_size_x * 2;
  int button_add_period_position_y = button_interval_y * 2 + button_add_period_size_x * 1;

  int button_power_size_x = (screen_size_x / 100 * 10) + button_interval_x;
  int button_power_size_y = screen_size_x / 100 * 5;
  int button_power_position_x = button_interval_x;
  int button_power_position_y = screen_size_y - button_interval_y - button_power_size_y;

  button_unit_1 = new Button("unit_1", button_unit_1_position_x, button_unit_1_position_y, button_unit_size_x, button_unit_size_y);
  button_unit_2 = new Button("unit_2", button_unit_2_position_x, button_unit_2_position_y, button_unit_size_x, button_unit_size_y);
  button_unit_3 = new Button("unit_3", button_unit_3_position_x, button_unit_3_position_y, button_unit_size_x, button_unit_size_y);

  button_turret_1 = new Button("turret_1", button_turret_1_position_x, button_turret_1_position_y, button_turret_size_x, button_turret_size_y);
  button_turret_2 = new Button("turret_2", button_turret_2_position_x, button_turret_2_position_y, button_turret_size_x, button_turret_size_y);
  button_turret_3 = new Button("turret_3", button_turret_3_position_x, button_turret_3_position_y, button_turret_size_x, button_turret_size_y);

  button_remove_turret = new Button("remove_turret", button_turret_remove_mode_position_x, button_turret_remove_mode_position_y, button_turret_remove_mode_size_x, button_turret_remove_mode_size_y);
  button_remove_turret_1 = new Button("", 0, player_1_position_y + (button_turret_to_add_decal * 3) + (button_turret_to_add_size_y * 3), button_turret_to_add_size_x, button_turret_to_add_size_y);
  button_remove_turret_2 = new Button("", 0, player_1_position_y + (button_turret_to_add_decal * 2) + (button_turret_to_add_size_y * 2), button_turret_to_add_size_x, button_turret_to_add_size_y);
  button_remove_turret_3 = new Button("", 0, player_1_position_y + (button_turret_to_add_decal * 1) + (button_turret_to_add_size_y * 1), button_turret_to_add_size_x, button_turret_to_add_size_y);
  button_remove_turret_4 = new Button("", 0, player_1_position_y + (button_turret_to_add_decal * 0) + (button_turret_to_add_size_y * 0), button_turret_to_add_size_x, button_turret_to_add_size_y);

  button_turret_add_max = new Button("add turret max", button_turret_add_max_position_x, button_turret_add_max_position_y, button_turret_add_max_size_x, button_turret_add_max_size_y);

  button_add_period = new Button("add_period", button_add_period_position_x, button_add_period_position_y, button_add_period_size_x, button_add_period_size_y);

  button_power = new Button("power", button_power_position_x, button_power_position_y, button_power_size_x, button_power_size_y);

  ///////////////////////////////////////////////////////////////animation
}
