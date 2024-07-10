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
          title: const Text(
            'Mi Contador',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 247, 104, 93),
          actions: [
            IconButton(
              icon: const Icon(Icons.restart_alt_rounded),
              onPressed: () {
                //...
                setState(() {                  
                  counter = 0;
                  changeClickMessage(counter: counter);
                });
              },
            )
          ],
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
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                //...In this method or function, I can execute logic
                setState(() {
                  counter += 1;
                  changeClickMessage(counter: counter);
                });
              },
              backgroundColor: const Color.fromARGB(255, 247, 104, 93),
              child: const Icon(
                Icons.add_outlined,
                color: Color.fromARGB(255, 248, 247, 247),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  counter -= 1;
                  changeClickMessage(counter: counter);
                });
              },
              backgroundColor: const Color.fromARGB(255, 247, 104, 93),
              child: const Icon(
                Icons.remove_outlined,
                color: Color.fromARGB(255, 248, 247, 247),
              ),
            )
          ],
        ));
  }

  void changeClickMessage({required int counter}) {
    if (counter == 1) {
      clicks = "Click";
    }
    if (counter == 0 || counter > 1) {
      clicks = "Clicks";
    }
  }
}
