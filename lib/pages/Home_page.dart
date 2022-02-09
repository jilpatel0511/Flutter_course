import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/itemWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 20;
  final String name = "Jil";
  final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cataloge App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context,index){
            return ItemWidget(item: dummyList [index], );
          },
        ),
      ),
      drawer: const MyDrawer(
      
      ),
    );
  }
}
