void setup() {
  size (1000, 600, P2D);
  frameRate(60);
}

///////////////////////////////////////////////////////////////
int frame = 0;

boolean initialisation_done = false;

Unit unit_1;

Player player_1;
Player player_2;

Player tab_player[] = new Player[2];

Main main;

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
    main.tab_player[0].add_unit(unit_1);
  }

  //add unit to ennemy each 500 frame
  if (frame % 50 == 0) {
    println("add unit to ennemy");
    main.tab_player[1].add_unit(unit_1);
  }

  if (frame == 700) {
    main.tab_player[0].remove_unit();
  }

  main.update();
  main.display();

  reset();
}

void initialisation() {
  unit_1 = new Unit(new Collider(20, 50), 100, 1, 1);

  player_1 = new Player(1);
  player_2 = new Player(2);

  tab_player[0] = player_1;
  tab_player[1] = player_2;

  main = new Main(tab_player, 2, 2);
}
