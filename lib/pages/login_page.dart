import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,),
          SizedBox(
            height: 30,
            child: Text("My name is jil"),
          ),
          Text("Welcome",style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 25),
            child: Column(children: [
              TextFormField(
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Name",
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password",
              ),
            ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              ElevatedButton( 
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: ()  {
                  print("Hii!!");
                  },
                ),
            ],
            ),
          )
        ],
        ),
    );
  }
}