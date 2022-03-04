import 'dart:convert';

import 'package:first_app/widgets/Home_widgets/CatalogHeader.dart';
import 'package:first_app/widgets/Home_widgets/CatalogList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/themes.dart';



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
        backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],
          )
        ),
      )
    );
  }
}