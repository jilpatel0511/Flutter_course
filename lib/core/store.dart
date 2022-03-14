import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/models/cart.dart';
import 'package:first_app/models/catalog.dart';

class MyStore extends VxStore {
  CatalogModel? catalog;
  CartModel? cart;
  MyStore({
     this.catalog,
     this.cart,
  });

}
