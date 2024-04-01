import 'package:app1/pages/home.page.counter.dart';
import 'package:app1/pages/home.page.dart';
import 'package:app1/pages/home.page.product.dart';
import 'package:app1/pages/product_details.dart';
import 'package:app1/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  //Run app
  runApp(const Test1());
}

//widget
class Test1 extends StatelessWidget {
  const Test1({super.key});
//Generate Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //not goog pratice to apply style on text directlly
      //use theme where predefine color style ...
      // it work in materialApp
      theme: MyAppTheme.themes[0],
      //home: const HomePage(),
      routes: {
        "/": (context) => const HomePage(),
        "/counter": (context) => const CounterPage(),
        "/products": (context) => ProductsPage(),
        "/productDetail": (context) => ProductsDetail(
            productId: ModalRoute.of(context)!.settings.arguments as int),
      },
      //initialRoute: "/",
    );
  }
}
