import 'package:flutter/material.dart';

class DatePickerPage extends StatefulWidget {
  @override
  _DatePickerPageState createState() => _DatePickerPageState();
}

class _DatePickerPageState extends State<DatePickerPage> {
  var currentDate = "Sin fecha";
  TextEditingController myController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _datePickerButton(context),
            Divider(
              height: 30,
              thickness: 5,
              indent: 50,
              endIndent: 50,
              color: Colors.amberAccent,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              child: _dateField(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _datePickerButton(BuildContext context) {
    return RaisedButton(
      child: Text("Show date picker"),
      textColor: Colors.blueGrey,
      shape: StadiumBorder(),
      color: Colors.amberAccent,
      elevation: 10,
      onPressed: () {
        _showDatePicker(context);
      },
    );
  }

  Widget _dateField() {
    return TextField(
      controller: myController,
      enabled: false,
      textAlign: TextAlign.center,
      toolbarOptions: ToolbarOptions(
          copy: false, paste: false, selectAll: false, cut: false),
      decoration: InputDecoration(
        hintText: "Sin fecha seleccionada",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
    );
  }

  void _showDatePicker(BuildContext context) async {
    final currentYear = DateTime.now().year;
    DateTime dateSelected = await showDatePicker(
      context: context,
      firstDate: new DateTime(currentYear - 2),
      lastDate: new DateTime(currentYear + 2),
      initialDate: new DateTime.now(),
      locale: Locale("es", "ES"),
    );
    if (dateSelected != null) {
      myController.text = dateSelected.toString();
    }
  }
}
