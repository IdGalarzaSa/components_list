import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text("Mostrar Material Alert"),
              textColor: Colors.blueGrey,
              shape: StadiumBorder(),
              color: Colors.amberAccent,
              elevation: 10,
              onPressed: () {
                _showMaterialAlert(context);
              },
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              child: Text("Mostrar Cupertino Alert"),
              textColor: Colors.blueGrey,
              shape: StadiumBorder(),
              color: Colors.tealAccent,
              elevation: 10,
              onPressed: () {
                _showCupertinoAlert(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _showMaterialAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        barrierColor: Colors.amberAccent,
        builder: (context) {
          return AlertDialog(
            title: Text("Do you accept?"),
            content: Text("Do you accept all the terms and conditions?"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 30,
            actions: [
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("Accept"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  void _showCupertinoAlert(BuildContext context) {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Do you accept?"),
            content: Text("Do you accept all the terms and conditions?"),
            actions: [
              FlatButton(
                child: Text("Cancel"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text("Accept"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
}
