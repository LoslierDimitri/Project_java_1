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
