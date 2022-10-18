import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  final String title;
  final int value;
  final int? groupValue;
  final void Function(int?)? onChanged;
  const RadioWidget({
    Key? key,
    required this.title,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
          visualDensity: const VisualDensity(
              horizontal: VisualDensity.minimumDensity,
              vertical: VisualDensity.minimumDensity),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
        Text(title),
      ],
    );
  }
}
