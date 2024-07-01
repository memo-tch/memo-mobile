import 'package:ditomaapp/config/couleurs.dart';
import 'package:flutter/material.dart';

class Design {
  // Responsité de toute application
  static MediaQueryData? _mediaQueryData;
  static double? _screenWidth;
  static double? _screenHeight;

  // Initialisation de la hauteur et de la largeur de l'écran
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData!.size.width;
    _screenHeight = _mediaQueryData!.size.height;
  }

  // Accesseurs statiques pour la largeur et la hauteur de l'écran
  static double? get widthSize => _screenWidth;
  static double? get heightSize => _screenHeight;

  //💥💥💥💥💥💥💥💥💥--ESPACEMENT-----💥💥💥💥💥💥💥💥💥💥//

  // Définition des espacements entre les widgets
  static const spaceSmall = SizedBox(height: 25);

  // Utilisation de getters pour éviter l'erreur de nullabilité
  static SizedBox get spaceMedium {
    return SizedBox(
      height: _screenHeight != null ? _screenHeight! * 0.05 : 0,
    );
  }

  static SizedBox get spaceBig {
    return SizedBox(
      height: _screenHeight != null ? _screenHeight! * 0.08 : 0,
    );
  }

  //💎💎💎💎💎💎💎💎💎----BORDURES-----💎💎💎💎💎💎💎💎💎💎//

  // Définition des styles de bordure
  static const outlinedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  );

  // Style de bordure en focus
  static const focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: Couleurs.primaryColor),
  );

  // Style de bordure en cas d'erreur
  static const errorBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(color: Couleurs.erreurColor),
  );

  // style boutons
  static final raduis =  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  );


  //💦💦💦💦💦💦💦💦💦----THEMA APP----💦💦💦💦💦💦💦💦💦💦//

  // Définition des thèmes pour l'application
  static final theme = ThemeData(
    inputDecorationTheme: const InputDecorationTheme(
      focusColor: Couleurs.primaryColor,
      border: outlinedBorder,
      focusedBorder: focusBorder,
      errorBorder: errorBorder,
      enabledBorder: outlinedBorder,
      floatingLabelStyle: TextStyle(color: Couleurs.primaryColor),
      prefixIconColor: Colors.black38,
    ),
    scaffoldBackgroundColor: Couleurs.colorwith,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Couleurs.primaryColor,
      selectedItemColor: Couleurs.colorwith,
      showSelectedLabels: true,
      showUnselectedLabels: false,
      unselectedItemColor: Couleurs.grayshade,
      elevation: 10,
      type: BottomNavigationBarType.fixed,
    ),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
  );

  //🆕🆕🆕🆕🆕🆕🆕🆕🆕----TEXTE STYLE--🆕🆕🆕🆕🆕🆕🆕🆕🆕

  // Définition de styles de texte
  static const gras = FontWeight.bold;
  static const italic = FontStyle.italic;

  //🌅🌅🌅🌅🌅🌅🌅🌅🌅--LOGO APP-------🌅🌅🌅🌅🌅🌅🌅🌅🌅🌅//

  // logo de l'application
  static final logo = CircleAvatar(
    child: Image.asset("images/dim.png"),
  );

  //🌊🌊🌊🌊🌊🌊🌊🌊🌊--DECORATION-----🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊//

  static final decoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );

  //👣👣👣👣👣👣👣👣👣--PIED DE PAGE---👣👣👣👣👣👣👣👣👣👣//

  // Utilisation de Spacer pour envoyer les enfants au bas de la page
  static const footer = Spacer();

  
}
