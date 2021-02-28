import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  DropdownPage({Key key}) : super(key: key);

  @override
  _DropdownPageState createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  List<_SoftwareLanguage> softwareList = [
    new _SoftwareLanguage("Dart", 0),
    new _SoftwareLanguage("Swift", 1),
    new _SoftwareLanguage("Java", 2),
    new _SoftwareLanguage("Kotlin", 3),
    new _SoftwareLanguage("JavaScript", 4),
    new _SoftwareLanguage("Objetive - C", 5),
    new _SoftwareLanguage("C++", 6),
    new _SoftwareLanguage("C#", 7),
  ];

  _SoftwareLanguage selectedSoftware;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _dropdownWidget(),
            Divider(
              height: 16,
              thickness: 5,
              color: Colors.amberAccent,
              indent: 32,
              endIndent: 32,
            ),
            Text(selectedSoftware?.name ?? ""),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        onPressed: () {
          setState(() {
            selectedSoftware = null;
          });
        },
      ),
    );
  }

  Widget _dropdownWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.amberAccent),
          borderRadius: BorderRadius.circular(20)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<_SoftwareLanguage>(
          value: selectedSoftware,
          hint: Text("Seleccione su lenguaje preferido"),
          items: _getSoftwareLanguageList(),
          onChanged: (newSelectedLanguage) {
            setState(() {
              selectedSoftware = newSelectedLanguage;
            });
          },
        ),
      ),
    );
  }

  List<DropdownMenuItem<_SoftwareLanguage>> _getSoftwareLanguageList() {
    List<DropdownMenuItem<_SoftwareLanguage>> myList = new List();

    softwareList.forEach((language) {
      myList.add(DropdownMenuItem(
        child: new Text(language.name),
        value: language,
      ));
    });

    return myList;
  }
}

class _SoftwareLanguage {
  String name;
  int languageCode;

  _SoftwareLanguage(String name, int languageCode) {
    this.name = name;
    this.languageCode = languageCode;
  }
}
