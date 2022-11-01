int calculateGcd(int a, int b) {
  if (a == 0 && b == 0) {
    return 0;
  } else if (a == 0 && b == 0) {
    return b;
  } else if (b == 0 && a != 0) {
    return a;
  } else {
    if (a < b) {
      var temp = a;
      a = b;
      b = temp;
    }

    while (b != 0) {
      a %= b;

      var temp = a;
      a = b;
      b = temp;
    }

    return a;
  }
}

int calculateLcm(int a, int b) {
  if (a == 0 || b == 0) {
    throw ArgumentError.notNull(a == 0 ? 'a' : 'b');
  }
  return a.abs() ~/ calculateGcd(a, b) * b.abs();
}

List<int> getPrimeDividers(int number) {
  List<int> primeDividersList = [];

  int div = 2;
  while (number > 1) {
    while (number % div == 0) {
      number ~/= div;
      primeDividersList.add(div);
    }
    div++;
  }
  return primeDividersList;
}
