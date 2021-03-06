import 'package:estados/pages/page_1.dart';
import 'package:estados/pages/page_2.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'pagina1',
      routes: {
        'pagina1': ( _ ) => const Page1(),
        'pagina2': ( _ ) => const Page2(),
      },
    );
  }
}