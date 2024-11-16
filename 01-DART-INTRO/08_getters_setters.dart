void main() {
  final mySquare = Square(side: -10);

  mySquare.side = -3;

  print('Area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side})
    : assert(side > 0, 'Side value must be positive'),
      _side = side;

  double get area => _side * _side;
  
  set side(double value) {
    assert(value > 0, 'Side value must be positive');
    _side = value;
  }

  double calculateArea() => _side * _side;
}
