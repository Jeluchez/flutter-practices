import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

class User {
  String name;
  String family;
  int age;

  User(this.name, this.family, this.age);
}

class Case3 extends StatefulWidget {
  const Case3({Key? key}) : super(key: key);

  @override
  State<Case3> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<Case3> {
  StreamController<User> streamController = StreamController();
  late Stream<User> userStream;
  User user = User("Mahdi", "Shahbazi", 25);

  @override
  void initState() {
    streamController.add(user);
    userStream = streamController.stream.asBroadcastStream();
    super.initState();
  }

  _increaseAge() {
    user.age++;
    streamController.add(user);
  }

  _addAToName() {
    user.name += "A";
    streamController.add(user);
  }

  int i = 0, j = 0, k = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apbbar'),
      ),
      body: Column(
        children: <Widget>[
          Text("Name"),
          StreamBuilder(
            initialData: user.name,
            stream: userStream.map((User user) => user.name).distinct(),
            builder: (_, AsyncSnapshot<String> snapshot) {
              log('Name');
              log('${i++}');
              return Text(snapshot.data!);
            },
          ),
          Text("Family"),
          StreamBuilder(
              initialData: user.family,
              stream: userStream.map((User user) => user.name).distinct(),
              builder: (_, AsyncSnapshot<String> snapshot) {
                log('Family');
                log('${j++}');
                return Text(snapshot.data!);
              }),
          Text("Age"),
          StreamBuilder(
              initialData: user.age.toString(),
              stream:
                  userStream.map((User user) => user.age.toString()).distinct(),
              builder: (_, AsyncSnapshot<String> snapshot) {
                log('Age');
                log('${k++}');
                return Text(
                  snapshot.data!.toString(),
                );
              }),
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
  }
}
