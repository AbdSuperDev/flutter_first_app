import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counters"),
      ),
      body: Center(
        child: Text("Counter value =$counter"),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "plus",
            onPressed: () {
              setState(() {
                ++counter;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            heroTag: "remove",
            onPressed: () {
              setState(() {
                --counter;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
