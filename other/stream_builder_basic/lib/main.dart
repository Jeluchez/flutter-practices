import 'package:flutter/material.dart';
import 'package:stream_builder_basic/stream_builder_case1.dart';
import 'package:stream_builder_basic/stream_builder_case2.dart';
import 'package:stream_builder_basic/stream_builder_case3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Case3(),
    );
  }
}
