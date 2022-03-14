import 'package:first_app/core/store.dart';
import 'package:first_app/models/cart.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart'),
      ),
      body: Column(
        children: [
          _cartList().p32().expand(),
          Divider(),
          _cartTotal(),
        ],
      ),
    );
  }
}

class _cartTotal extends StatelessWidget {
  const _cartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CartModel? _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${_cart!.totalPrice}"
              .text
              .xl4
              .color(MyTheme.darkBluishColor)
              .make(),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Buying not supported yet"),
              ));
            },
            child: Text('Buy'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
            ),
          ).w32(context),
        ],
      ),
    );
  }
}

class _cartList extends StatelessWidget {
  


  
  @override
  Widget build(BuildContext context) {
    final CartModel? _cart = (VxState.store as MyStore).cart;
    return _cart!.items!.isEmpty
        ? Center(child: Text("Nothing To Show"))
        : ListView.builder(
            itemCount: _cart.items?.length,
            itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.done),
              trailing: IconButton(
                icon: Icon(Icons.remove_circle),
                onPressed: () {
                  _cart.remove(_cart.items![index]);
                  
                },
              ),
              title: Text(_cart.items![index].name),
            ),
          );
  }
}
