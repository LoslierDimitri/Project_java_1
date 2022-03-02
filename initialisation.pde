void initialisation() {
  ///////////////////////////////////////////////////////////////screen
  screen_size_x = width;
  screen_size_y = height;
  frame_rate = 60;

  ///////////////////////////////////////////////////////////////unit
  //name, collider(size_x, size_y), health_point, damage, speed, range, cost
  unit_1 = new Unit(new Collider(20, 50), 100, 1, 5, 10, 50, "Clubman");
  unit_2 = new Unit(new Collider(30, 40), 110, 2, 4, 150, 150, "Slingshotman");
  unit_3 = new Unit(new Collider(40, 40), 300, 5, 3, 30, 300, "Dino");

  unit_11 = new Unit(new Collider(20, 40), 200, 3, 5, 10, 200, "Hoplite");
  unit_12 = new Unit(new Collider(20, 50), 250, 8, 4, 150, 400, "Spearman");
  unit_13 = new Unit(new Collider(50, 40), 800, 13, 3, 30, 650, "Elephant");

  unit_21 = new Unit(new Collider(20, 40), 200, 10, 5, 10, 400, "Knight");
  unit_22 = new Unit(new Collider(20, 50), 250, 16, 4, 150, 600, "Crossbowman");
  unit_23 = new Unit(new Collider(50, 40), 800, 20, 3, 30, 850, "Horseman");

  unit_31 = new Unit(new Collider(20, 40), 200, 18, 5, 10, 800, "Dueler");
  unit_32 = new Unit(new Collider(20, 50), 250, 22, 4, 150, 1200, "Rifleman");
  unit_33 = new Unit(new Collider(50, 40), 800, 26, 3, 40, 1650, "Gunner");

  unit_41 = new Unit(new Collider(20, 40), 200, 24, 5, 60, 1600, "Melee Infantry");
  unit_42 = new Unit(new Collider(20, 50), 250, 29, 4, 150, 1900, "Infantry");
  unit_43 = new Unit(new Collider(50, 40), 800, 33, 3, 50, 2400, "Tank");

  unit_51 = new Unit(new Collider(20, 40), 200, 31, 5, 60, 2200, "Laser Blade");
  unit_52 = new Unit(new Collider(20, 50), 250, 36, 4, 150, 2600, "Blaster");
  unit_53 = new Unit(new Collider(50, 40), 800, 40, 3, 50, 3000, "Super Soldier");

  ///////////////////////////////////////////////////////////////turret
  //name, position_x, position_y, size_x, size_y, damage, range, cost
  turret_1 = new Turret(0, 0, 0, 0, 1, 200, 200, "Slingshot");
  turret_2 = new Turret(0, 0, 0, 0, 2, 250, 400, "Eggs catapult");
  turret_3 = new Turret(0, 0, 0, 0, 5, 300, 500, "Bones catapult");

  turret_11 = new Turret(0, 0, 0, 0, 3, 200, 400, "Onager");
  turret_12 = new Turret(0, 0, 0, 0, 8, 250, 500, "Catapult");
  turret_13 = new Turret(0, 0, 0, 0, 13, 300, 800, "Mangonel");

  turret_21 = new Turret(0, 0, 0, 0, 10, 200, 400, "Boiled oil");
  turret_22 = new Turret(0, 0, 0, 0, 16, 250, 500, "Trebuchet");
  turret_23 = new Turret(0, 0, 0, 0, 20, 300, 800, "Scorpio");

  turret_31 = new Turret(0, 0, 0, 0, 18, 200, 400, "Small Cannon");
  turret_32 = new Turret(0, 0, 0, 0, 22, 250, 500, "Medium Cannon");
  turret_33 = new Turret(0, 0, 0, 0, 26, 300, 800, "Large Cannon");

  turret_41 = new Turret(0, 0, 0, 0, 24, 200, 400, "Machine gun");
  turret_42 = new Turret(0, 0, 0, 0, 29, 250, 500, "Small Rocket");
  turret_43 = new Turret(0, 0, 0, 0, 33, 300, 800, "Big Rocket");

  turret_51 = new Turret(0, 0, 0, 0, 31, 200, 400, "Titanium Shooter");
  turret_52 = new Turret(0, 0, 0, 0, 36, 250, 500, "Lazer Cannon");
  turret_53 = new Turret(0, 0, 0, 0, 40, 300, 800, "Iron Ray");

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

  int button_display_unit_size_x = (button_interval_x * 2) + (button_unit_size_x * 3);
  int button_display_unit_size_y = button_unit_size_y * 1;
  int button_display_unit_position_x = screen_size_x - (button_unit_size_x * 3) - (button_interval_x * 3);
  int button_display_unit_position_y = (button_interval_y * 2) + (button_unit_size_y * 1);

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

  button_display_unit = new Button("", button_display_unit_position_x, button_display_unit_position_y, button_display_unit_size_x, button_display_unit_size_y);

  ///////////////////////////////////////////////////////////////animation
}
