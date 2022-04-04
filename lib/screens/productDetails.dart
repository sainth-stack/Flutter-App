import 'package:checkout/screens/bodyDetails.dart';
import 'package:checkout/screens/cartScreen.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../models/Product.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;

  const DetailsScreen({Key? key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: product?.color,
      appBar: buildAppBar(context),
      body: DetailBody(product:product),
      // body: Body(product: product!),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product!.color,
      elevation: 0,
     leading: IconButton(
        icon:Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartScreen(
                            ),
                          ));
          },
        ),
        SizedBox(width: 20.0 / 2)
      ],
    );
  }
}
