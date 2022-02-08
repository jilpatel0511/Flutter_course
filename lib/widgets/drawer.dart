import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final  ImageUrl = "data:image/jpeg;base64,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";
    return Container(
      child: Drawer(
        child: Container(
          color: Colors.red,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child:UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                    margin: EdgeInsets.zero,
                    accountName: Text("Jil Patel",
                    textScaleFactor: 1.3,
                    style: TextStyle(
                        fontSize: 15,
                        ),
                      ), 
                      accountEmail: Text("jilpatel0511@gmail.com",
                      textScaleFactor: 1.3,
                      style: TextStyle(
                            fontSize: 15,
                            ),
                          ),  
                        currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(ImageUrl),
                        ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,color: Colors.white,
                ),
                title : Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white
                    ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title : Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white
                    ),
                ),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title : Text(
                "Email",
                textScaleFactor: 1.5,
                style: TextStyle(
                    color: Colors.white
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}