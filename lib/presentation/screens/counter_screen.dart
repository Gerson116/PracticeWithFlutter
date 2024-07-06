import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  String clicks = "Clicks";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Contador'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 148, 179, 204),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 75),
            ),
            Text(
              clicks,
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //...In this method or function, I can execute logic
          setState(() {
            counter += 1;

            if (counter == 1) {
              clicks = "Click";
            }
            if (counter > 1) {
              clicks = "Clicks";
            }
          });
          print("Quantity Click: $counter");
        },
        child: const Icon(Icons.plus_one),
        backgroundColor: const Color.fromARGB(255, 248, 149, 142),
      ),
    );
  }
}
