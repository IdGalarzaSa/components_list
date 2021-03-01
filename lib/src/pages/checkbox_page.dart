import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CheckboxPage extends StatefulWidget {
  CheckboxPage({Key key}) : super(key: key);

  @override
  _CheckboxPageState createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  var currentCheckboxState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _createCheckBox(),
            SizedBox(height: 30),
            Text(currentCheckboxState.toString()),
            _createCheckBoxListTile(),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _createCheckBox() {
    return Checkbox(
      value: currentCheckboxState,
      onChanged: (newCheckboxState) {
        setState(() {
          currentCheckboxState = newCheckboxState;
        });
      },
    );
  }

  Widget _createCheckBoxListTile() {
    return CheckboxListTile(
      title: Text(
          "Este es el estado de mi checkbox List Tile: ${currentCheckboxState.toString()}"),
      value: currentCheckboxState,
      onChanged: (newCheckboxState) {
        setState(() {
          currentCheckboxState = newCheckboxState;
        });
      },
    );
  }
}
