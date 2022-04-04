
import 'package:checkout/screens/body.dart';
import 'package:checkout/screens/cartScreenBody.dart';
import 'package:checkout/screens/itemCard.dart';
import 'package:checkout/screens/productDetails.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';
import '../models/Product.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar:  AppBar(
      title: Text("Cart"),
      backgroundColor: Colors.blue,
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
    ),
    body: CartScreenBody(),);
    
  }
}

