import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

import '../constants.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePageState1 createState() => _HomePageState1();
}

class _HomePageState1 extends State<HomePage1> {
  final int _stackIndex = 0;

  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "Pending";

  final List<String> _status = ["Pending", "Released", "Blocked"];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Radio button group example"),
        ),
        body: IndexedStack(
          index: _stackIndex,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RadioButton(
                  description: "Text alignment right",
                  value: "Text alignment right",
                  groupValue: _singleValue,
                  onChanged: (value) => setState(
                    () => _singleValue = "0",
                  ),
                  activeColor: Constants.redColor,
                  textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Constants.redColor,
                  ),
                ),
                RadioButton(
                  description: "Text alignment left",
                  value: "Text alignment left",
                  groupValue: _singleValue,
                  onChanged: (value) => setState(
                    () => _singleValue = "",
                  ),
                  textPosition: RadioButtonTextPosition.left,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupValue,
                  onChanged: (value) => setState(() {
                    _verticalGroupValue = value!;
                  }),
                  items: _status,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                  ),
                  activeColor: Colors.red,
                ),
                RadioGroup<String>.builder(
                  groupValue: _verticalGroupValue,
                  onChanged: (value) => setState(() {
                    _verticalGroupValue = value!;
                  }),
                  items: _status,
                  itemBuilder: (item) => RadioButtonBuilder(
                    item,
                    textPosition: RadioButtonTextPosition.left,
                  ),
                ),
              ],
            ),
            RadioGroup<String>.builder(
              direction: Axis.horizontal,
              groupValue: _verticalGroupValue,
              horizontalAlignment: MainAxisAlignment.spaceAround,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value!;
              }),
              items: _status,
              textStyle:
                  const TextStyle(fontSize: 15, color: Constants.blueColor),
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
            ),
          ],
        ),
      );
}
