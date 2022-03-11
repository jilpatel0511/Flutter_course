import 'package:first_app/core/store.dart';
import 'package:first_app/pages/cart_page.dart';
import 'package:first_app/utls/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:first_app/pages/Home_page.dart';
import 'package:first_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(cart:, catalog:  ),
  child: MyApp()));
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.LightTheme(context),
      //darkTheme: MyTheme.DarkTheme(context),
      initialRoute: MyRoutes.homeroute,
      routes: {
        MyRoutes.homeroute : (context) => HomePage(),
        MyRoutes.loginroute : (context) => LoginPage(),
        MyRoutes.cartroute : (context) => CartPage(),
      },
    );
  }
}
