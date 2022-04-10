import 'dart:math';

class Point {
  late num x;
  late num y;
  late num z;

  Point(this.x, this.y, this.z);

  ///Исходный вектор
  factory Point.fromStart() {
    return Point(0, 0, 0);
  }

  ///Еденичный вектор
  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  get numStr => 'x:$x,y:$y,z:$z';

  ///Расстояние между точками в пространстве
  distanceTo(Point p2) =>
      sqrt(pow((p2.x - x), 2) + pow((p2.y - y), 2) + pow((p2.z - z), 2));

  static getSquare(Point p1, Point p2, Point p3) {
    var a = p1.distanceTo(p2);
    var b = p2.distanceTo(p3);
    var c = p3.distanceTo(p1);

    var p = (a + b + c) / 2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }
}
