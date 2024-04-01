import 'dart:convert';

import 'package:app1/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsDetail extends StatefulWidget {
  final int productId;
  ProductsDetail({super.key, required this.productId});

  @override
  State<ProductsDetail> createState() => _ProductsDetailState();
}

class _ProductsDetailState extends State<ProductsDetail> {
  dynamic product = null;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http
        .get(Uri.parse(
            "http://192.168.100.249:9003/products/${widget.productId}"))
        .then((resp) => {
              setState(() {
                product = json.decode(resp.body);
              }),
            })
        .catchError((err) {
      print("********** Error ********");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Details => ${widget.productId}"),
      ),
      body: Center(
          child: (product != null)
              ? ProductItem(
                  product: product,
                  isDetail: true,
                )
              : Container()),
    );
  }
}
