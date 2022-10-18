import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: FormScreen(),
      ),
    );
  }
}

class FormScreen extends StatelessWidget {
  FormScreen({Key? key}) : super(key: key);
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.disabled,
      inputFormatters: [
        LengthLimitingTextInputFormatter(3),
        FilteringTextInputFormatter.allow(
          RegExp('[0-9]'),
        ),
      ],
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      onChanged: (val) {},
      maxLines: 1,
    );
  }
}
