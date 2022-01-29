import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  final int days = 20;
  final String name = "karan";

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title : Text("First App"),
        ),  
        body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter by $name"),
            ),
          ),
        drawer: Drawer(),
        );
  }
}