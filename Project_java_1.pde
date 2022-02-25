void setup() {
  size (1000, 600, P2D);
  frameRate(60);
}

///////////////////////////////////////////////////////////////
int frame = 0;

boolean initialisation_done = false;
boolean remove_turret_mode = false;

Unit unit_1;
Unit unit_2;
Unit unit_3;

Unit unit_11;
Unit unit_12;
Unit unit_13;

Turret turret_1;
Turret turret_2;
Turret turret_3;

Turret turret_11;
Turret turret_12;
Turret turret_13;

Player player_1;
Player player_2;

Player tab_player[] = new Player[2];

Main main;

Button button_unit_1;
Button button_unit_2;
Button button_unit_3;

Button button_turret_1;
Button button_turret_2;
Button button_turret_3;

Button button_remove_turret;
Button button_remove_turret_1;
Button button_remove_turret_2;
Button button_remove_turret_3;
Button button_remove_turret_4;

Button button_add_period;

Collider collider_player_1;
Collider collider_player_2;

///////////////////////////////////////////////////////////////

void draw() {
  if (initialisation_done == false) {
    initialisation();
    initialisation_done = true;
  }
  frame = frame + 1;
  println("frame: " + frame);

  background(150);

  if (mouse_click == true) {
    if (button_unit_1.collide(mouse_x, mouse_y) == true) {
      if (main.tab_player[0].period == 1) {
        button_unit_1.add_unit(main, unit_1);
      }
      if (main.tab_player[0].period == 2) {
        button_unit_1.add_unit(main, unit_11);
      }
    }
    if (button_unit_2.collide(mouse_x, mouse_y) == true) {
      if (main.tab_player[0].period == 1) {
        button_unit_2.add_unit(main, unit_2);
      }
      if (main.tab_player[0].period == 2) {
        button_unit_2.add_unit(main, unit_12);
      }
    }
    if (button_unit_3.collide(mouse_x, mouse_y) == true) {
      if (main.tab_player[0].period == 1) {
        button_unit_3.add_unit(main, unit_3);
      }
      if (main.tab_player[0].period == 2) {
        button_unit_3.add_unit(main, unit_13);
      }
    }

    if (button_turret_1.collide(mouse_x, mouse_y) == true) {
      if (main.tab_player[0].period == 1) {
        button_turret_1.add_turret(main, turret_1);
      }
      if (main.tab_player[0].period == 2) {
        button_turret_1.add_turret(main, turret_11);
      }
    }
    if (button_turret_2.collide(mouse_x, mouse_y) == true) {
      if (main.tab_player[0].period == 1) {
        button_turret_2.add_turret(main, turret_2);
      }
      if (main.tab_player[0].period == 2) {
        button_turret_2.add_turret(main, turret_12);
      }
    }
    if (button_turret_3.collide(mouse_x, mouse_y) == true) {
      if (main.tab_player[0].period == 1) {
        button_turret_3.add_turret(main, turret_3);
      }
      if (main.tab_player[0].period == 2) {
        button_turret_3.add_turret(main, turret_13);
      }
    }

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

    if (button_remove_turret.collide(mouse_x, mouse_y) == true) {
      if (remove_turret_mode == false) {
        remove_turret_mode = true;
      } else {
        remove_turret_mode = false;
      }
    }

    if (button_add_period.collide(mouse_x, mouse_y) == true) {
      button_add_period.add_period(main);
    }
  }
  if (input_space == true) {
    initialisation_done = false;
  }
  text("" + remove_turret_mode, 500, 500);

  //add unit to ennemy each 50 frame
  if (frame % 50 == 0) {
    println("add unit to ennemy");
    main.tab_player[1].add_unit(unit_1);
  }

  main.update();
  main.display();

  button_unit_1.display();
  button_unit_2.display();
  button_unit_3.display();
  button_turret_1.display();
  button_turret_2.display();
  button_turret_3.display();
  button_remove_turret.display();
  button_add_period.display();

  reset();
}

void initialisation() {
  //collider, hp, damage, speed, range, cost
  unit_1 = new Unit(new Collider(20, 50), 100, 1, 5, 50, 100);
  unit_2 = new Unit(new Collider(30, 40), 150, 2, 3, 10, 150);
  unit_3 = new Unit(new Collider(40, 40), 500, 5, 2, 10, 300);

  unit_11 = new Unit(new Collider(20, 40), 200, 3, 4, 60, 300);
  unit_12 = new Unit(new Collider(20, 50), 250, 5, 5, 10, 200);
  unit_13 = new Unit(new Collider(50, 40), 800, 10, 2, 10, 800);

  turret_1 = new Turret(0, 0, 0, 0, 1, 200, 200);
  turret_2 = new Turret(0, 0, 0, 0, 2, 250, 400);
  turret_3 = new Turret(0, 0, 0, 0, 3, 300, 500);

  turret_11 = new Turret(0, 0, 0, 0, 2, 200, 400);
  turret_12 = new Turret(0, 0, 0, 0, 4, 300, 500);
  turret_13 = new Turret(0, 0, 0, 0, 5, 250, 800);

  collider_player_1 = new Collider(100, 100);
  collider_player_2 = new Collider(100, 100);

  player_1 = new Player(1, 1000, collider_player_1, 0, 200, 1000);
  player_2 = new Player(2, 1000, collider_player_2, 900, 200, 1000);

  tab_player[0] = player_1;
  tab_player[1] = player_2;

  main = new Main(tab_player, 2, 2);

  button_unit_1 = new Button(0, 0, 100, 100);
  button_unit_2 = new Button(100, 0, 100, 100);
  button_unit_3 = new Button(200, 0, 100, 100);

  button_turret_1 = new Button(700, 0, 100, 100);
  button_turret_2 = new Button(800, 0, 100, 100);
  button_turret_3 = new Button(900, 0, 100, 100);

  button_remove_turret_1 = new Button(0, 200, 20, 20);
  button_remove_turret_2 = new Button(0, 230, 20, 20);
  button_remove_turret_3 = new Button(0, 260, 20, 20);
  button_remove_turret_4 = new Button(0, 290, 20, 20);

  button_remove_turret = new Button(900, 100, 100, 100);

  button_add_period = new Button(0, 500, 100, 100);
}
