import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void changeCounter([String operator='0']) {
    switch (operator) {
      case '+':
        counter++;
        setState(() {});
        break;
      case '-':
        counter--;
        setState(() {});
        break;
      default:
        counter=0;
        setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    TextStyle setFontSize(double val) => TextStyle(fontSize: val);

    return Scaffold(
      appBar: AppBar(
          title: const Center(child: Text('Counter Screen')), elevation: 0),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clicks counter', style: setFontSize(30)),
            Text('$counter', style: setFontSize(40))
          ],
        ),
      ),
      // ***Aling button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustonFloatingButton(
        changeCounterFn: changeCounter
      )
    );
  }
}

class CustonFloatingButton extends StatelessWidget {

  final Function changeCounterFn;
  
  const CustonFloatingButton({
    Key? key, 
    required this.changeCounterFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => changeCounterFn('+'),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
        FloatingActionButton(
          onPressed: () => changeCounterFn(),
          child: const Icon(Icons.clear_all_outlined),
        ),
        FloatingActionButton(
           onPressed: () => changeCounterFn('-'),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
