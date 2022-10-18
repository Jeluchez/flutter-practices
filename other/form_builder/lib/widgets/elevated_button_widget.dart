import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String label;
  const ElevatedButtonWidget({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
        ),
      ),
    );
  }
}
