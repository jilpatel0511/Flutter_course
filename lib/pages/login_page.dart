//import 'dart:html';

import 'package:first_app/utls/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child : SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login_image.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Text("Welcome $name",
          style: TextStyle(
            fontSize: 30,
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
                onChanged: (value) {
                  name = value;
                  setState(() {
                    
                  });
                }
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
              InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeroute);
                  },
                  child : AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width:changeButton? 50:100,
                    height: 50,
                    alignment: Alignment.center,
                    child:changeButton ?Icon(
                        Icons.done,
                        color: Colors.white,
                        ): 
                          Text("Login",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                          fontSize: 18,),
                      ),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(changeButton ? 50: 10), 
                      ),
                  ),
                ),
              // ElevatedButton( 
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(
              //     minimumSize: Size(150, 50),
              //   ),
              //   onPressed: ()  {
              //     Navigator.pushNamed(context, MyRoutes.homeroute);
              //     },
              //   ),
            ],
            ),
          ),
          
        ],
        ),
    ),
    );
  }
}