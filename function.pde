int distance(int x_position_1, int x_position_2) {
  int result = 0;

  result = x_position_2 - x_position_1;
  if (result < 0) {
    result = result * (-1);
  }

  return result;
}
