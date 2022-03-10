import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class homeDetailPage extends StatelessWidget {
  final Item catalog;
  const homeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.lg.bold.xl.red600.make(),
          _AddToCart().wh(120, 30)
              .pOnly(right: 10)
        ],
      ).p32(),
      body: Center(
          child: Column(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image),
          ).h32(context),
          Expanded(
            child: VxArc(
              height: 20,
              arcType: VxArcType.CONVEY,
              edge: VxEdge.TOP,
              child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(children: [
                  catalog.name.text.xl4
                      .color(MyTheme.darkBluishColor)
                      .bold
                      .make(),
                  catalog.desc.text.xl.make(),
                  10.heightBox,
                ]).p64(),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class _AddToCart extends StatefulWidget {
  const _AddToCart({
    Key? key,
  }) : super(key: key);

  @override
  State<_AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<_AddToCart> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(StadiumBorder())),
            child: "Add to cart".text.make(),);
  }
}
