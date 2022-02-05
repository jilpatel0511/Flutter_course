import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final ImageUrl = "assets\images\login_image.png";
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
                    //backgroundImage: NetworkImage(ImageUrl),
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