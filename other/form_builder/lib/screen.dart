import 'package:flutter/material.dart';
import 'package:form_builder/widgets/elevated_button_widget.dart';
import 'package:form_builder/widgets/form.dart';
import 'package:form_builder/widgets/radio_widget.dart';

class BeneficiaryScreen extends StatefulWidget {
  const BeneficiaryScreen({Key? key}) : super(key: key);

  @override
  State<BeneficiaryScreen> createState() => _BeneficiaryScreenState();
}

class _BeneficiaryScreenState extends State<BeneficiaryScreen> {
  int? _selectedRadio = 0;

  void _handleRadioValueChange(int? val) {
    setState(() {
      _selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form_builder')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text('Beneficiarios '),
                Icon(
                  Icons.info_outline,
                  color: Color(0xFF708195),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                RadioWidget(
                  title: 'Si',
                  value: 1,
                  groupValue: _selectedRadio,
                  onChanged: _handleRadioValueChange,
                ),
                const SizedBox(width: 20),
                RadioWidget(
                  title: 'No',
                  value: 0,
                  groupValue: _selectedRadio,
                  onChanged: _handleRadioValueChange,
                )
              ],
            ),
            FormWidget(),
            const ElevatedButtonWidget(
              onPressed: null,
              label: 'Continuar',
            )
          ],
        ),
      ),
    );
  }
}
