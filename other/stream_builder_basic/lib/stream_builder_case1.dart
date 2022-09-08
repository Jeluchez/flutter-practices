import 'dart:async';

import 'package:flutter/material.dart';

class User {
  String name;
  String family;
  int age;

  User(this.name, this.family, this.age);
}

class Case1 extends StatefulWidget {
  const Case1({Key? key}) : super(key: key);

  @override
  State<Case1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Case1> {
  User user = User("Mahdi", "Shahbazi", 25);
  StreamController<User> streamController = StreamController();

  _increaseAge() {
    user.age++;
    streamController.add(user);
  }

  _addAToName() {
    user.name += "A";
    streamController.add(user);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: user,
        stream: streamController.stream,
        builder: (_, AsyncSnapshot<User> snapshot) {
          User user = snapshot.data as User;
          return Scaffold(
            appBar: AppBar(
              title: const Text('Apbbar'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Name"),
                Text(user.name),
                const Text("Family"),
                Text(user.family),
                const Text("Age"),
                Text(user.age.toString()),
                ElevatedButton(
                  onPressed: _increaseAge,
                  child: Text("Increase age"),
                ),
                ElevatedButton(
                  onPressed: _addAToName,
                  child: Text("add A to name"),
                ),
              ],
            ),
          );
        });
  }
}
