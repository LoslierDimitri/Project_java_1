void initialisation() {
  ///////////////////////////////////////////////////////////////screen
  screen_size_x = width;
  screen_size_y = height;
  frame_rate = 60;

  ///////////////////////////////////////////////////////////////unit
  int size_50 = screen_size_x / 100 * 3;
  int size_60 = screen_size_x / 100 * 4;
  int size_70 = screen_size_x / 100 * 5;
  int size_80 = screen_size_x / 100 * 6;
  int size_90 = screen_size_x / 100 * 7;
  int size_100 = screen_size_x / 100 * 8;
  int size_110 = screen_size_x / 100 * 9;
  int size_120 = screen_size_x / 100 * 10;

  //name, collider(size_x, size_y), health_point, damage, speed, range, cost
  unit_1 = new Unit(new Collider(size_50, size_70), 240, 1, 5, 10, 50, "Clubman", "unit_1_attack_sound", "Unit_1");
  unit_2 = new Unit(new Collider(size_50, size_70), 200, 3, 4, 300, 150, "Slingshotman", "unit_1_attack_sound", "Unit_2");
  unit_3 = new Unit(new Collider(size_100, size_90), 1000, 6, 3, 100, 300, "Dino", "unit_1_attack_sound", "Unit_3");

  unit_11 = new Unit(new Collider(size_50, size_70), 640, 3, 5, 10, 200, "Hoplite", "unit_1_attack_sound", "Unit_11");
  unit_12 = new Unit(new Collider(size_50, size_70), 600, 6, 4, 300, 400, "Spearman", "unit_1_attack_sound", "Unit_12");
  unit_13 = new Unit(new Collider(size_100, size_90), 1600, 9, 3, 100, 650, "Elephant", "unit_1_attack_sound", "Unit_13");

  unit_21 = new Unit(new Collider(size_50, size_70), 1240, 6, 5, 10, 400, "Knight", "unit_1_attack_sound", "Unit_21");
  unit_22 = new Unit(new Collider(size_50, size_70), 1200, 9, 4, 300, 600, "Crossbowman", "unit_1_attack_sound", "Unit_22");
  unit_23 = new Unit(new Collider(size_100, size_90), 2100, 12, 3, 100, 850, "Horseman", "unit_1_attack_sound", "Unit_23");

  unit_31 = new Unit(new Collider(size_50, size_70), 1640, 15, 5, 10, 800, "Dueler", "unit_1_attack_sound", "Unit_31");
  unit_32 = new Unit(new Collider(size_50, size_70), 1600, 18, 4, 300, 1200, "Rifleman", "unit_1_attack_sound", "Unit_32");
  unit_33 = new Unit(new Collider(size_50, size_70), 2600, 21, 3, 100, 1650, "Gunner", "unit_1_attack_sound", "Unit_33");

  unit_41 = new Unit(new Collider(size_50, size_70), 2400, 15, 5, 10, 1600, "Melee Infantry", "unit_1_attack_sound", "Unit_41");
  unit_42 = new Unit(new Collider(size_50, size_70), 2000, 21, 4, 300, 1900, "Infantry", "unit_1_attack_sound", "Unit_42");
  unit_43 = new Unit(new Collider(size_100, size_90), 3200, 24, 3, 100, 2400, "Tank", "unit_1_attack_sound", "Unit_43");

  unit_51 = new Unit(new Collider(size_50, size_70), 2800, 27, 5, 10, 2200, "Laser Blade", "unit_1_attack_sound", "Unit_51");
  unit_52 = new Unit(new Collider(size_50, size_70), 2500, 30, 4, 300, 2600, "Blaster", "unit_1_attack_sound", "Unit_52");
  unit_53 = new Unit(new Collider(size_50, size_70), 4000, 33, 3, 100, 3000, "Super Soldier", "unit_1_attack_sound", "Unit_53");

  ///////////////////////////////////////////////////////////////turret
  //name, position_x, position_y, size_x, size_y, damage, range, cost
  turret_1 = new Turret(0, 0, 0, 0, 1, 200, 200, "Slingshot", "turret_1_attack_sound", "Turret_1");
  turret_2 = new Turret(0, 0, 0, 0, 2, 250, 400, "Eggs catapult", "turret_1_attack_sound", "Turret_2");
  turret_3 = new Turret(0, 0, 0, 0, 3, 300, 500, "Bones catapult", "turret_1_attack_sound", "Turret_3");

  turret_11 = new Turret(0, 0, 0, 0, 2, 200, 400, "Onager", "turret_1_attack_sound", "Turret_11");
  turret_12 = new Turret(0, 0, 0, 0, 3, 250, 500, "Catapult", "turret_1_attack_sound", "Turret_12");
  turret_13 = new Turret(0, 0, 0, 0, 4, 300, 800, "Mangonel", "turret_1_attack_sound", "Turret_13");

  turret_21 = new Turret(0, 0, 0, 0, 3, 200, 400, "Boiled oil", "turret_1_attack_sound", "Turret_21");
  turret_22 = new Turret(0, 0, 0, 0, 4, 250, 500, "Trebuchet", "turret_1_attack_sound", "Turret_22");
  turret_23 = new Turret(0, 0, 0, 0, 5, 300, 800, "Scorpio", "turret_1_attack_sound", "Turret_23");

  turret_31 = new Turret(0, 0, 0, 0, 4, 200, 400, "Small Cannon", "turret_1_attack_sound", "Turret_31");
  turret_32 = new Turret(0, 0, 0, 0, 5, 250, 500, "Medium Cannon", "turret_1_attack_sound", "Turret_32");
  turret_33 = new Turret(0, 0, 0, 0, 6, 300, 800, "Large Cannon", "turret_1_attack_sound", "Turret_33");

  turret_41 = new Turret(0, 0, 0, 0, 5, 200, 400, "Machine gun", "turret_1_attack_sound", "Turret_41");
  turret_42 = new Turret(0, 0, 0, 0, 6, 250, 500, "Small Rocket", "turret_1_attack_sound", "Turret_42");
  turret_43 = new Turret(0, 0, 0, 0, 7, 300, 800, "Large Rocket", "turret_1_attack_sound", "Turret_43");

  turret_51 = new Turret(0, 0, 0, 0, 6, 200, 400, "Titanium Shooter", "turret_1_attack_sound", "Turret_51");
  turret_52 = new Turret(0, 0, 0, 0, 7, 250, 500, "Laser Cannon", "turret_1_attack_sound", "Turret_52");
  turret_53 = new Turret(0, 0, 0, 0, 8, 300, 800, "Ion Ray", "turret_1_attack_sound", "Turret_53");

  ///////////////////////////////////////////////////////////////player
  //number, health_point, collider(size_x, size_y), position_x, position_y, money
  int player_1_size_x = screen_size_x / 100 * 10;
  int player_1_size_y = screen_size_y / 100 * 25;
  int player_1_position_x = 0;
  int player_1_position_y = screen_size_y / 2;
  int player_1_health_point = 1000;
  int player_1_money = 1000;

  PImage tab_base_player_1[] = new PImage[6];
  tab_base_player_1[0] = loadImage("Base/base_1_1.png");
  tab_base_player_1[1] = loadImage("Base/base_2_1.png");
  tab_base_player_1[2] = loadImage("Base/base_3_1.png");
  tab_base_player_1[3] = loadImage("Base/base_4_1.png");
  tab_base_player_1[4] = loadImage("Base/base_5_1.png");
  tab_base_player_1[5] = loadImage("Base/base_6_1.png");

  PImage tab_image_power[] = new PImage[6];
  tab_image_power[0] = loadImage("Power/power_1.png");
  tab_image_power[1] = loadImage("Power/power_2.png");
  tab_image_power[2] = loadImage("Power/power_3.png");
  tab_image_power[3] = loadImage("Power/power_4.png");
  tab_image_power[4] = loadImage("Power/power_5.png");
  tab_image_power[5] = loadImage("Power/power_6.png");

  player_1 = new Player(1, player_1_health_point, new Collider(player_1_size_x, player_1_size_y), player_1_position_x, player_1_position_y, player_1_money, tab_base_player_1, tab_image_power);

  int player_2_size_x = screen_size_x / 100 * 10;
  int player_2_size_y = screen_size_y / 100 * 25;
  int player_2_position_x = screen_size_x - player_2_size_x;
  int player_2_position_y = screen_size_y / 2;
  int player_2_health_point = 1000;
  int player_2_money = 1000;

  PImage tab_base_player_2[] = new PImage[6];
  tab_base_player_2[0] = loadImage("Base/base_1_2.png");
  tab_base_player_2[1] = loadImage("Base/base_2_2.png");
  tab_base_player_2[2] = loadImage("Base/base_3_2.png");
  tab_base_player_2[3] = loadImage("Base/base_4_2.png");
  tab_base_player_2[4] = loadImage("Base/base_5_2.png");
  tab_base_player_2[5] = loadImage("Base/base_6_2.png");

  player_2 = new Player(2, player_2_health_point, new Collider(player_2_size_x, player_2_size_y), player_2_position_x, player_2_position_y, player_2_money, tab_base_player_2, tab_image_power);

  tab_player[0] = player_1;
  tab_player[1] = player_2;

  ///////////////////////////////////////////////////////////////main
  PImage main_background[] = new PImage[6];
  main_background[0] = loadImage("Background/background_1_1.png");
  main_background[1] = loadImage("Background/test_background_2.png");
  main_background[2] = loadImage("Background/background_3_1.png");
  main_background[3] = loadImage("Background/test_background_4.png");
  main_background[4] = loadImage("Background/test_background_5.png");
  main_background[5] = loadImage("Background/test_background_6.png");
  PImage main_background_2[] = new PImage[6];
  main_background_2[0] = loadImage("Background/background_1_2.png");
  main_background_2[1] = loadImage("Background/background_1_2.png");
  main_background_2[2] = loadImage("Background/background_3_2.png");
  main_background_2[3] = loadImage("Background/background_1_2.png");
  main_background_2[4] = loadImage("Background/background_1_2.png");
  main_background_2[5] = loadImage("Background/background_1_2.png");
  PImage logo_menu = loadImage("Interface/Logo.png");
  PImage background_menu = loadImage("Background/test_background_menu.png");
  PImage logo_end[] = new PImage[2];
  logo_end[0] = loadImage("Interface/logo_you_win.png");
  logo_end[1] = loadImage("Interface/logo_you_loose.png");

  main = new Main(tab_player, 2, 2, main_background, main_background_2, logo_menu, background_menu, logo_end);

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
  int button_play_size_x = screen_size_x / 100 * 5;
  int button_play_size_y = screen_size_x / 100 * 5;
  int button_restart_size_x = screen_size_x / 100 * 5;
  int button_restart_size_y = screen_size_x / 100 * 5;

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

  int button_turret_to_add_size_x = 50;
  int button_turret_to_add_size_y = 50;
  int button_turret_to_add_decal = 10;

  int button_turret_add_max_size_x = screen_size_x / 100 * 5;
  int button_turret_add_max_size_y = screen_size_x / 100 * 5;
  int button_turret_add_max_position_x = button_interval_x * 2 + button_turret_add_max_size_x * 1;
  int button_turret_add_max_position_y = button_interval_y * 2 + button_turret_add_max_size_x * 1;

  int button_add_period_size_x = screen_size_x / 100 * 5;
  int button_add_period_size_y = screen_size_x / 100 * 5;
  int button_add_period_position_x = button_interval_x * 3 + button_add_period_size_x * 2;
  int button_add_period_position_y = button_interval_y * 2 + button_add_period_size_x * 1;

  int button_power_size_x = (screen_size_x / 100 * 10);
  int button_power_size_y = screen_size_x / 100 * 5;
  int button_power_position_x = button_interval_x;
  int button_power_position_y = screen_size_y - button_interval_y - button_power_size_y;

  int button_display_unit_size_x = (button_interval_x * 2) + (button_unit_size_x * 3);
  int button_display_unit_size_y = button_unit_size_y * 1;
  int button_display_unit_position_x = screen_size_x - (button_unit_size_x * 3) - (button_interval_x * 3);
  int button_display_unit_position_y = (button_interval_y * 2) + (button_unit_size_y * 1);

  int button_display_play_size_x = (button_interval_x * 2) + (button_play_size_x * 4);
  int button_display_play_size_y = button_play_size_y * 2;
  int button_display_play_position_x = screen_size_x - (screen_size_x / 2) - (button_display_play_size_x / 2);
  int button_display_play_position_y = screen_size_y /2;

  int button_display_restart_size_x = (button_interval_x * 2) + (button_restart_size_x * 4);
  int button_display_restart_size_y = button_restart_size_y * 2;
  int button_display_restart_position_x = screen_size_x - (screen_size_x / 2) - (button_display_restart_size_x / 2);
  int button_display_restart_position_y = screen_size_y /2;

  PImage unit_button_1[] = new PImage[6];
  unit_button_1[0] = loadImage("Unit/Buttons/Age1/button_unit_1.png");
  unit_button_1[1] = loadImage("Unit/Buttons/Age2/button_unit_11.png");
  unit_button_1[2] = loadImage("Unit/Buttons/Age3/button_unit_21.png");
  unit_button_1[3] = loadImage("Unit/Buttons/Age4/button_unit_31.png");
  unit_button_1[4] = loadImage("Unit/Buttons/Age5/button_unit_41.png");
  unit_button_1[5] = loadImage("Unit/Buttons/Age6/button_unit_51.png");

  PImage unit_button_2[] = new PImage[6];
  unit_button_2[0] = loadImage("Unit/Buttons/Age1/button_unit_2.png");
  unit_button_2[1] = loadImage("Unit/Buttons/Age2/button_unit_12.png");
  unit_button_2[2] = loadImage("Unit/Buttons/Age3/button_unit_22.png");
  unit_button_2[3] = loadImage("Unit/Buttons/Age4/button_unit_32.png");
  unit_button_2[4] = loadImage("Unit/Buttons/Age5/button_unit_42.png");
  unit_button_2[5] = loadImage("Unit/Buttons/Age6/button_unit_52.png");

  PImage unit_button_3[] = new PImage[6];
  unit_button_3[0] = loadImage("Unit/Buttons/Age1/button_unit_3.png");
  unit_button_3[1] = loadImage("Unit/Buttons/Age2/button_unit_13.png");
  unit_button_3[2] = loadImage("Unit/Buttons/Age3/button_unit_23.png");
  unit_button_3[3] = loadImage("Unit/Buttons/Age4/button_unit_33.png");
  unit_button_3[4] = loadImage("Unit/Buttons/Age5/button_unit_43.png");
  unit_button_3[5] = loadImage("Unit/Buttons/Age6/button_unit_53.png");

  PImage turret_button_1[] = new PImage[6];
  turret_button_1[0] = loadImage("Turret/Buttons/Age1/button_turret_1.png");
  turret_button_1[1] = loadImage("Turret/Buttons/Age2/button_turret_11.png");
  turret_button_1[2] = loadImage("Turret/Buttons/Age3/button_turret_21.png");
  turret_button_1[3] = loadImage("Turret/Buttons/Age4/button_turret_31.png");
  turret_button_1[4] = loadImage("Turret/Buttons/Age5/button_turret_41.png");
  turret_button_1[5] = loadImage("Turret/Buttons/Age6/button_turret_51.png");

  PImage turret_button_2[] = new PImage[6];
  turret_button_2[0] = loadImage("Turret/Buttons/Age1/button_turret_2.png");
  turret_button_2[1] = loadImage("Turret/Buttons/Age2/button_turret_12.png");
  turret_button_2[2] = loadImage("Turret/Buttons/Age3/button_turret_22.png");
  turret_button_2[3] = loadImage("Turret/Buttons/Age4/button_turret_32.png");
  turret_button_2[4] = loadImage("Turret/Buttons/Age5/button_turret_42.png");
  turret_button_2[5] = loadImage("Turret/Buttons/Age6/button_turret_52.png");
  
  PImage turret_button_3[] = new PImage[6];
  turret_button_3[0] = loadImage("Turret/Buttons/Age1/button_turret_3.png");
  turret_button_3[1] = loadImage("Turret/Buttons/Age2/button_turret_13.png");
  turret_button_3[2] = loadImage("Turret/Buttons/Age3/button_turret_23.png");
  turret_button_3[3] = loadImage("Turret/Buttons/Age4/button_turret_33.png");
  turret_button_3[4] = loadImage("Turret/Buttons/Age5/button_turret_43.png");
  turret_button_3[5] = loadImage("Turret/Buttons/Age6/button_turret_53.png");

  PImage remove_turret_button[] = new PImage[1];
  remove_turret_button[0] = loadImage("Turret/Buttons/button_remove_turret.png");

  PImage remove_turret_button_1[] = new PImage[1];
  remove_turret_button_1[0] = loadImage("Interface/button_1.png");

  PImage remove_turret_button_2[] = new PImage[1];
  remove_turret_button_2[0] = loadImage("Interface/button_1.png");

  PImage remove_turret_button_3[] = new PImage[1];
  remove_turret_button_3[0] = loadImage("Interface/button_1.png");

  PImage remove_turret_button_4[] = new PImage[1];
  remove_turret_button_4[0] = loadImage("Interface/button_1.png");

  PImage turret_add_max_button[] = new PImage[1];
  turret_add_max_button[0] = loadImage("Turret/Buttons/button_add_turret.png");

  PImage add_period_button[] = new PImage[1];
  add_period_button[0] = loadImage("Interface/button_evolve.png");

  PImage power_button[] = new PImage[1];
  power_button[0] = loadImage("Interface/button_2.png");

  PImage display_unit_button[] = new PImage[1];
  display_unit_button[0] = loadImage("Interface/button_1.png");

  PImage play_button[] = new PImage[1];
  play_button[0] = loadImage("Interface/button_play.png");

  PImage restart_button[] = new PImage[1];
  restart_button[0] = loadImage("Interface/button_replay.png");



  button_unit_1 = new Button(/*"unit_1",*/ button_unit_1_position_x, button_unit_1_position_y, button_unit_size_x, button_unit_size_y, unit_button_1);
  button_unit_2 = new Button(/*"unit_2",*/ button_unit_2_position_x, button_unit_2_position_y, button_unit_size_x, button_unit_size_y, unit_button_2);
  button_unit_3 = new Button(/*"unit_3",*/ button_unit_3_position_x, button_unit_3_position_y, button_unit_size_x, button_unit_size_y, unit_button_3);

  button_turret_1 = new Button(/*"turret_1",*/ button_turret_1_position_x, button_turret_1_position_y, button_turret_size_x, button_turret_size_y, turret_button_1);
  button_turret_2 = new Button(/*"turret_2",*/ button_turret_2_position_x, button_turret_2_position_y, button_turret_size_x, button_turret_size_y, turret_button_2);
  button_turret_3 = new Button(/*"turret_3",*/ button_turret_3_position_x, button_turret_3_position_y, button_turret_size_x, button_turret_size_y, turret_button_3);

  button_remove_turret = new Button(/*"remove_turret",*/ button_turret_remove_mode_position_x, button_turret_remove_mode_position_y, button_turret_remove_mode_size_x, button_turret_remove_mode_size_y, remove_turret_button);
  button_remove_turret_1 = new Button(/*"",*/ 0, player_1_position_y + (button_turret_to_add_decal * 3) + (button_turret_to_add_size_y * 3), button_turret_to_add_size_x, button_turret_to_add_size_y, remove_turret_button_1);
  button_remove_turret_2 = new Button(/*"",*/ 0, player_1_position_y + (button_turret_to_add_decal * 2) + (button_turret_to_add_size_y * 2), button_turret_to_add_size_x, button_turret_to_add_size_y, remove_turret_button_2);
  button_remove_turret_3 = new Button(/*"",*/ 0, player_1_position_y + (button_turret_to_add_decal * 1) + (button_turret_to_add_size_y * 1), button_turret_to_add_size_x, button_turret_to_add_size_y, remove_turret_button_3);
  button_remove_turret_4 = new Button(/*"",*/ 0, player_1_position_y + (button_turret_to_add_decal * 0) + (button_turret_to_add_size_y * 0), button_turret_to_add_size_x, button_turret_to_add_size_y, remove_turret_button_4);

  button_turret_add_max = new Button(/*"add turret max",*/ button_turret_add_max_position_x, button_turret_add_max_position_y, button_turret_add_max_size_x, button_turret_add_max_size_y, turret_add_max_button);

  button_add_period = new Button(/*"add_period",*/ button_add_period_position_x, button_add_period_position_y, button_add_period_size_x, button_add_period_size_y, add_period_button);

  button_power = new Button(/*"power",*/ button_power_position_x, button_power_position_y, button_power_size_x, button_power_size_y, power_button);

  button_display_unit = new Button(/*"",*/ button_display_unit_position_x, button_display_unit_position_y, button_display_unit_size_x, button_display_unit_size_y, display_unit_button);

  button_play = new Button (/*"Play",*/ button_display_play_position_x, button_display_play_position_y, button_display_play_size_x, button_display_play_size_y, play_button);

  button_restart = new Button(/*"Restart",*/ button_display_restart_position_x, button_display_restart_position_y, button_display_restart_size_x, button_display_restart_size_y, restart_button);

  ///////////////////////////////////////////////////////////////music
  main_music = minim.loadFile("Music/Game_music3.mp3");
  menu_music = minim.loadFile("Music/Menu_music.mp3");
  endgame_music1 = minim.loadFile("Music/Endgame_music1.mp3");
  endgame_music2 = minim.loadFile("Music/Endgame_music2.mp3");
}
