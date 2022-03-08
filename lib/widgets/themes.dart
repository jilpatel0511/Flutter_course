import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme{
  static ThemeData LightTheme(BuildContext context) =>ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black), 
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
    );
  static ThemeData DarkTheme(BuildContext context) =>ThemeData(
         fontFamily: GoogleFonts.poppins().fontFamily,
         cardColor: Colors.black,
         canvasColor: DarkCreamColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.black), 
          toolbarTextStyle: Theme.of(context).textTheme.bodyText2, titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
    );  

    //color
    static Color creamColor = Color(0xfff5f5f5);
    static Color DarkCreamColor = Vx.gray800;
    static Color darkBluishColor = Color(0xff403b58);
    static Color LightBluishColor = Vx.purple300;   
}