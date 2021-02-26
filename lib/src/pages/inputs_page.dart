import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        children: [_basicInput()],
      ),
    );
  }

  Widget _basicInput() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.number,
      toolbarOptions: ToolbarOptions(
          copy: false, cut: false, paste: true, selectAll: false),
      decoration: InputDecoration(
        icon: Icon(Icons.account_circle),
        suffixIcon: Icon(Icons.anchor_outlined),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: "Esta es la ayuda de este TextField",
        hintStyle: (TextStyle(color: Colors.grey)),
        labelText: "Este es el label",
        helperText: "Este es un texto de ayuda",
        counter: Text("Letras 0"),
      ),
      onChanged: (textoActual) {
        print(textoActual);
      },
    );
  }
}
