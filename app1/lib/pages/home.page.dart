import 'package:app1/pages/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

//homepage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Organize page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        //backgroundColor: Colors.deepOrange,
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(
              //backgroundColor: Colors.red
              ),
        ),
      ),
    );
  }
}
