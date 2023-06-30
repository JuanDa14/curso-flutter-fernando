import 'package:flutter/material.dart';

//Para poner colores personalizados
//Si quieres poner un color antes siempre va 0xFF{Color}
//_ es para que no se pueda acceder desde fuera de este archivo osea es privado
const Color _customColor = Color(0xFF000000);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

//Assert => es para que no se pueda poner un numero negativo
  AppTheme({this.selectedColor = 0}) 
  : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 'Colors must between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.dark
        );
  }
}
