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
        "/" : (context) => HomePage(),
        "/Login" : (context) => LoginPage(),
      },
    );
  }
}
