import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

class Couleurs {
  // Primary, secondary, and essential accent colors
  static const primaryColor = Colors.blue;
  static const secondaryColor = Colors.blueAccent;
  static const erreurColor = Colors.red;
  static const succesColor = Colors.green;
  static const colorwith = Colors.white;
  static const grayshade = Color.fromARGB(255, 44, 43, 43);

  // Gradient colors
  static const degrade = LinearGradient(
    colors: [
      Colors.blue,
      Colors.green,
    ],
  );

  static final bganim1 = AnimateGradient(
    primaryBeginGeometry: AlignmentDirectional(0, 1),
    primaryEndGeometry: AlignmentDirectional(0, 2),
    secondaryBeginGeometry: AlignmentDirectional(2, 0),
    secondaryEndGeometry: AlignmentDirectional(0, -0.8),
    textDirectionForGeometry: TextDirection.rtl,
    primaryColors: const [
      Color.fromARGB(110, 37, 233, 30),
      Color.fromARGB(255, 74, 126, 58),
      Color.fromARGB(255, 153, 144, 144),
    ],
    secondaryColors: const [
      Colors.white,
      Color.fromARGB(255, 0, 0, 0),
      Color.fromARGB(255, 0, 0, 0),
    ],
  );


  static final bganim2 = AnimateGradient(
    primaryBegin: Alignment.topLeft,
    primaryEnd: Alignment.bottomLeft,
    secondaryBegin: Alignment.bottomLeft,
    secondaryEnd: Alignment.topRight,
    primaryColors: const [
      Colors.pink,
      Colors.pinkAccent,
      Colors.white,
    ],
    secondaryColors: const [
      Colors.white,
      Colors.blueAccent,
      Colors.blue,
    ],
  );

  static final bganim3 = AnimateGradient(
    primaryBeginGeometry: const AlignmentDirectional(0, 1),
    primaryEndGeometry: const AlignmentDirectional(0, 2),
    secondaryBeginGeometry: const AlignmentDirectional(2, 0),
    secondaryEndGeometry: const AlignmentDirectional(0, -0.8),
    textDirectionForGeometry: TextDirection.rtl,
      primaryColors: const [
        Color.fromARGB(255, 5, 7, 44),
        Color.fromARGB(255, 6, 10, 44),
        Color.fromARGB(255, 0, 0, 0),
    ],
    secondaryColors: const [
        Color.fromARGB(255, 6, 24, 51),
        Color.fromARGB(255, 4, 25, 46),
        Color.fromARGB(255, 10, 20, 1),
    ],
  );


  // Material Colors
  static const MaterialColor mcgpalette0 = MaterialColor(
    _mcgpalette0PrimaryValue,
    <int, Color>{
      50: Color(0xFFE5F4F3),
      100: Color(0xFFBEE4E1),
      200: Color(0xFF93D3CD),
      300: Color(0xFF67C1B8),
      400: Color(0xFF47B3A9),
      500: Color(_mcgpalette0PrimaryValue),
      600: Color(0xFF229E92),
      700: Color(0xFF1C9588),
      800: Color(0xFF178B7E),
      900: Color(0xFF0D7B6C),
    },
  );
  static const int _mcgpalette0PrimaryValue = 0xFF26A69A;

  static const MaterialColor mcgpalette0Accent = MaterialColor(
    _mcgpalette0AccentValue,
    <int, Color>{
      100: Color(0xFFADFFF3),
      200: Color(_mcgpalette0AccentValue),
      400: Color(0xFF47FFE4),
      700: Color(0xFF2DFFE0),
    },
  );
  static const int _mcgpalette0AccentValue = 0xFF7AFFEC;

  static const MaterialColor mcgpalette1 = MaterialColor(
    _mcgpalette1PrimaryValue,
    <int, Color>{
      50: Color(0xFFE8EAF6),
      100: Color(0xFFC5CAE9),
      200: Color(0xFF9FA8DA),
      300: Color(0xFF7986CB),
      400: Color(0xFF5C6BC0),
      500: Color(_mcgpalette1PrimaryValue),
      600: Color(0xFF3949AB),
      700: Color(0xFF303F9F),
      800: Color(0xFF283593),
      900: Color(0xFF1A237E),
    },
  );
  static const int _mcgpalette1PrimaryValue = 0xFF3F51B5;

  static const MaterialColor mcgpalette1Accent = MaterialColor(
    _mcgpalette1AccentValue,
    <int, Color>{
      100: Color(0xFF8C9EFF),
      200: Color(_mcgpalette1AccentValue),
      400: Color(0xFF3D5AFE),
      700: Color(0xFF304FFE),
    },
  );
  static const int _mcgpalette1AccentValue = 0xFF536DFE;

  // Method to create AnimateGradient widget
  static Widget createGradientWidget({required Widget child}) {
    return AnimateGradient(
      primaryBeginGeometry: AlignmentDirectional(0, 1),
      primaryEndGeometry: AlignmentDirectional(0, 2),
      secondaryBeginGeometry: AlignmentDirectional(2, 0),
      secondaryEndGeometry: AlignmentDirectional(0, -0.8),
      textDirectionForGeometry: TextDirection.rtl,
      primaryColors: const [
        Colors.pink,
        Colors.pinkAccent,
        Colors.white,
      ],
      secondaryColors: const [
        Colors.white,
        Colors.blueAccent,
        Colors.blue,
      ],
      child: child,
    );
  }

  void init(BuildContext context) {}
}

// Usage example
class YourWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Couleurs.createGradientWidget(
      child: const Center(
        child: Text('Hello, World!'),
      ),
    );
  }
}




// Example usage:
// child: Icon(IconsApp.globe, color: Couleurs.erreurColor,)

//------------POUR L'UTILISER -------------------//
// child: Icon(IconsApp.globe, color: Couleurs.erreurColor,)

