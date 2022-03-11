import 'package:first_app/models/cart.dart';
import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';


class AddToCart extends StatefulWidget {
  final catalog;
  AddToCart({
    Key? key, this.catalog,
  }) : super(key: key);

  
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items?.contains(catalog) ?? false;
    return ElevatedButton(onPressed: (){
      isInCart = !isInCart;
      if(!isInCart){
      final _catalog = CatalogModel();
      
      _cart.catalog = _catalog;
      _cart.add(catalog);
      
    }
    },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
        shape: MaterialStateProperty.all(StadiumBorder())
        ), 
      child: isInCart ? Icon(Icons.done): Icon(Icons.shopping_cart_outlined),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
