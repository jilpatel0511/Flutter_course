import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 20;
  final String name = "Jil";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cataloge App"),
      ),
      body: Center(
        child: Container(
          child: Text(
            "Welcome to $days days of flutter by $name",
            style:  TextStyle(
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
      drawer: MyDrawer(
      
      ),
    );
  }
}
