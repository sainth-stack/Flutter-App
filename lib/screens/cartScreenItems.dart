import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class CartScreenItems extends StatefulWidget {
  final Product? product;
  final Function press;
  const CartScreenItems({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  State<CartScreenItems> createState() => _CartScreenItemsState();
}

class _CartScreenItemsState extends State<CartScreenItems> {
  var count=1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> widget.press(),
      child: Row(
        children: [
          Column(
  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                
                  padding: EdgeInsets.all(kDefaultPaddin),
                 
                  height: 180,
                  width: 160,
                  decoration: BoxDecoration(
                    color: widget.product?.color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Hero(
                    tag: "${widget.product?.id}",
                    child: Image.asset(widget.product!.image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
                child: Text(
                  // products is out demo list
                  widget.product!.title,
                  style: TextStyle(color: kTextLightColor),
                ),
              ),
              Text(
                "\$${widget.product!.price}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
             
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,
            bottom: 30),
            child: Column(
              children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count--;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 49,
                        width: 50,
                        child: Center(
                          child: Text(
                            "${count}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "+",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                  
              ],
            ),
          )
        ],
      ),
    );
  }
}
