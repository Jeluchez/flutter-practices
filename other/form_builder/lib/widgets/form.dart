import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  final _formKey = GlobalKey<FormBuilderState>();
  double initialValue = 1;
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        children: [
          FormBuilderTextField(
            decoration: InputDecoration(
              labelText: 'Nombres',
              // contentPadding: EdgeInsets.all(20.0),
              isDense: true,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xFFbfc7d0),
                ), //<-- SEE HERE
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            name: 'Nombre',
            onChanged: (val) {
              log('$val'); // Pri // Print the text value write into TextField
            },
          ),
          FormBuilderTextField(
            decoration: InputDecoration(
              labelText: 'Nombres',
              // contentPadding: EdgeInsets.all(20.0),
              isDense: true,
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xFFbfc7d0),
                ), //<-- SEE HERE
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            name: 'Nombre',
            onChanged: (val) {
              log('$val'); // Print the text value write into TextField
            },
          ),
          FormBuilderSlider(
            onChanged: (value) {
              setState(() {
                initialValue = double.parse(value!.toStringAsFixed(0));
                print(initialValue);
              });
            },
            initialValue: initialValue,
            name: "percentage",
            min: 1,
            max: 100,
          )
        ],
      ),
    );
  }
}
