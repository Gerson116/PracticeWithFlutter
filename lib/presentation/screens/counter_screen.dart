import 'package:flutter/material.dart';
import 'package:flutter_application_1/enum/counter_enum.dart';

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
            counterButtons(counter: counter, actionId: CounterEnum.plus),
            const SizedBox(
              height: 15,
            ),
            counterButtons(counter: counter, actionId: CounterEnum.subtract)
          ],
        ));
  }

  void changeClickMessage({required int counter}) {
    if (counter == 1) {
      clicks = "Click";
    }
    if (counter == 0) {
      clicks = "Clicks";
    }
    if (counter > 1) {
      clicks = "Clicks";
    }
  }

  FloatingActionButton counterButtons(
      {required int counter, required CounterEnum actionId}) {
    Icon iconSelect = (actionId == CounterEnum.plus)
        ? const Icon(
            Icons.add_outlined,
            color: Color.fromARGB(255, 248, 247, 247),
          )
        : const Icon(
            Icons.remove_outlined,
            color: Color.fromARGB(255, 248, 247, 247),
          );
    return FloatingActionButton(
      onPressed: () {
        //...In this method or function, I can execute logic
        setState(() {
          if (actionId == CounterEnum.plus) {
            //...
            this.counter++;
            changeClickMessage(counter: counter);
          }
          if (actionId == CounterEnum.subtract && this.counter > 0) {
            //...
            this.counter--;
            changeClickMessage(counter: counter);
          }
        });
      },
      backgroundColor: const Color.fromARGB(255, 247, 104, 93),
      child: iconSelect,
    );
  }
}
