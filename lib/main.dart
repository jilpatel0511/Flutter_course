import 'package:first_app/utls/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_app/pages/Home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        fontFamily : GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/Login",
      routes: {
        MyRoutes.homeroute : (context) => HomePage(),
        MyRoutes.loginroute : (context) => LoginPage(),
      },
    );
  }
}
