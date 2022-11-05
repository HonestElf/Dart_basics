extension NthRoot on num {
  num getNthRoot(int n) {
    num number = this;
    int rootDegree = n;

    double eps = 0.00001; //допустимая погрешность
    double approxRoot = number / rootDegree; //начальное приближение корня
    num currentRoot = number; //значение корня последовательным делением
    int countiter = 0; //число итераций
    while ((approxRoot - currentRoot).abs() >= eps) {
      currentRoot = number;
      for (int i = 1; i < rootDegree; i++) {
        currentRoot = currentRoot / approxRoot;
      }
      approxRoot = 0.5 * (currentRoot + approxRoot);
      countiter++;
    }

    return approxRoot;
  }
}
