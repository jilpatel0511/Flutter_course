import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:first_app/widgets/itemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 20;

  final String name = "Jil";

  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData() async {
  await Future.delayed(Duration(seconds: 2));  
  final catalogJson = 
        await rootBundle.loadString("assets/files/catalog.json");
  final decodedData = 
        jsonDecode(catalogJson);
  var productsData = decodedData["products"];
  CatalogModel.items = List.from(productsData)
  .map<Item>((item) => Item.fromMap(item))
  .toList();
  setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cataloge App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:(CatalogModel.items != null && CatalogModel.items.isNotEmpty)? 
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            ), 
          itemBuilder: (context,index){
            final item = CatalogModel.items[index];
            return Card( 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)),
              child:GridTile(
                header: Container(
                  child: Text(item.name,style: TextStyle(color: Colors.white),),
                  padding : EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black
                    ),
                  ),
                child: Image.network(item.image),
                footer: Text(item.price.toString()),
                ));
          },
          itemCount: CatalogModel.items.length,
          ): Center(
          child: CircularProgressIndicator(),)
      ),
      drawer: const MyDrawer(
      
      ),
    );
  }
}
