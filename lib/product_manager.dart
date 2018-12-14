import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget{

  final String startingProduct;

  ProductManager({this.startingProduct = 'Food Tester'});

  @override
  State<StatefulWidget> createState() {
    return _productManagerState();
  }
}

class _productManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        onPressed: () {
          setState(() {
              _products.add('Advance food tester');
          });
        },
        child: Text('Add Product'),
      ),
    ),
    Products(_products)
    ],);
  }
}