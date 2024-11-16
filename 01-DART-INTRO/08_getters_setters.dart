void main() {
  final mySquare = Square(side: 10);

  mySquare.side = -3;

  print('Area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side}) : _side = side;

  double get area => _side * _side;
  set side(double value) => _side = value > 0 ? value : throw 'Side value must be positive';

  double calculateArea() => _side * _side;
}
