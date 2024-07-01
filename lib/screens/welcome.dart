import '../config/imports.dart';

class WelcomePage extends StatefulWidget {

  WelcomePage({Key? key}): super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.6,

        child: Stack(
          children: [
            // Fond de la page
            Couleurs.bganim3,
            //
            Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 1.0,
                child: Container(
                  
                ),
              ),
            ),
            //
            Align(
              alignment: Alignment.topCenter,
              child: FractionallySizedBox(
                heightFactor: 0.5,
                widthFactor: 1.0,
                child: Container(
                  
                ),
              ),
            ),
          ],
        ),

      ),
    );

  }
}