import 'package:flutter/material.dart';

class RadioListCliks extends StatelessWidget {
  final int _groupValue = -1;
  final String? title;
  final int? value;
  // ignore: prefer_typing_uninitialized_variables
  final onChanged;
  const RadioListCliks({Key? key, this.title, this.value, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      value: value,
      groupValue: _groupValue,
      onChanged: onChanged,
      title: Text(title!),
    );
  }
}
