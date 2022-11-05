import 'dart:math';

class Point {
  int _coordX;
  int _coordY;
  int _coordZ;

  Point(this._coordX, this._coordY, this._coordZ);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.unit() {
    return Point(1, 1, 1);
  }

  List<int> getPointCoords() {
    return [_coordX, _coordY, _coordZ];
  }

  void setPointCoords(int x, int y, int z) {
    _coordX = x;
    _coordY = y;
    _coordZ = z;
  }

  num getDistanceTo(Point refPoint) {
    num distance = sqrt(pow((refPoint._coordX - _coordX), 2) +
        pow((refPoint._coordY - _coordY), 2) +
        pow((refPoint._coordZ - _coordZ), 2));

    return distance.abs();
  }

  static num getVectorLength(Point firstPoint, Point secondPoint) {
    num vectorLength = firstPoint.getDistanceTo(secondPoint);
    return vectorLength;
  }

  static num getTriangleSquare(
      Point firstPoint, Point secondPoint, Point thirdPoint) {
    num vectorLength1 = getVectorLength(firstPoint, secondPoint);
    num vectorLength2 = getVectorLength(secondPoint, thirdPoint);
    num vectorLength3 = getVectorLength(thirdPoint, firstPoint);

    num halfPerimeter = (vectorLength1 + vectorLength2 + vectorLength3) / 2;

    return sqrt(halfPerimeter *
        (halfPerimeter - vectorLength1) *
        (halfPerimeter - vectorLength2) *
        (halfPerimeter - vectorLength3));
  }
}
