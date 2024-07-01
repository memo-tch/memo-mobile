import './config/imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      //******THEME DE L'APPLICATION********/
        theme: Design.theme,
      //******ROUTES DE L'APPLICATION*******/
      initialRoute: '/',
      routes: {
        '/':(context) =>  WelcomePage()
        // 'dashbord':(context) => const DashbordLayout(),
        // 'loginpage':(context) => const LoginPage(),
        // 'registerpage':(context) => const RegisterPage(),
        // 'success':(context) => SuccesPage(),
      },
    );
  }
}
