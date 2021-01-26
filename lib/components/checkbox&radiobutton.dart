import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySelectorsWidget extends StatefulWidget {
  @override
  _MySelectorsWidgetState createState() => _MySelectorsWidgetState();
}

enum SelectorOptions { option1, option2 }

class _MySelectorsWidgetState extends State<MySelectorsWidget> {
  bool _isActive = false;
  bool _isActiveTile = true;
  SelectorOptions _optionSelected = SelectorOptions.option1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Selectores - CheckBox & RadioButton'),
        ),
        body: Column(
          children: [
            Checkbox(
                value: _isActive,
                onChanged: (bool valueIn) {
                  setState(() {
                    _isActive = valueIn;
                  });
                }),
            CheckboxListTile(
                title: Text('Titulo'),
                value: _isActiveTile,
                onChanged: (bool valueIn) {
                  setState(() {
                    _isActiveTile = valueIn;
                  });
                }),
            ListTile(
              title: Text('Opción 1'),
              leading: Radio(
                value: SelectorOptions.option1,
                groupValue: _optionSelected,
                onChanged: (SelectorOptions option) {
                  setState(() {
                    _optionSelected = option;
                  });
                },
              ),
            ),
            ListTile(
              title: Text('Opción 2'),
              leading: Radio(
                value: SelectorOptions.option2,
                groupValue: _optionSelected,
                onChanged: (SelectorOptions option) {
                  setState(() {
                    _optionSelected = option;
                  });
                },
              ),
            ),
          ],
        ));
  }
}
