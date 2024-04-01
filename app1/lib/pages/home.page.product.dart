import 'dart:convert';

import 'package:app1/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductsPage extends StatefulWidget {
  ProductsPage({super.key});
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    http
        .get(Uri.parse("http://192.168.100.249:9003/products"))
        .then((resp) => {
              print(resp.body),
              setState(() {
                products = json.decode(resp.body);
              }),
              print(products),
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
        title: const Text("Products"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ProductItem(
            product: products[index],
            isDetail: false,
          );
        },
        itemCount: products.length,
      ),
    );
  }
}
