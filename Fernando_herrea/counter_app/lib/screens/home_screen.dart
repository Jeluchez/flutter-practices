


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextStyle setFontSize(double val) => TextStyle(fontSize: val);

    int counter=0;

    

    return  Scaffold(
      appBar: AppBar(
        title: const Center(
          child:  Text('Home Screen')
        ),
        elevation:0
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Clicks counter', style: setFontSize(30)),
            Text('$counter',style: setFontSize(40))
          ],
        ),
      ),
      // ***Aling button
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print('Button was clicked: $counter');
        },
        backgroundColor: const Color.fromARGB(255, 79, 176, 255),
        child: const Icon(Icons.add),
      ),
    );
  }

}