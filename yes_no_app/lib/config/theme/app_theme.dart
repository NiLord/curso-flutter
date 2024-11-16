import 'package:flutter/material.dart';

const Color _customColor = Colors.indigo;

const List<Color> _colorsThemes = [
  _customColor,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.pink,
  Colors.amber,
  Colors.orange
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorsThemes.length,
            'Colors must be between 0 and ${_colorsThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorsThemes[selectedColor]
    );
  }
}
