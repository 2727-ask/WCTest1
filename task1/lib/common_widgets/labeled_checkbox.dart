import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  final String? label;
  const LabeledCheckbox({
    Key? key,
    required this.padding,
    required this.value,
    required this.onChanged,
    this.label,
  }) : super(key: key);

  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label!)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
