import 'package:components_list/src/providers/menu_provider.dart';
import 'package:components_list/src/utils/icons_string_utils.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Components"),
        ),
        body: _createList(),
      ),
    );
  }

  Widget _createList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _itemList(snapshot.data),
          // children: [],
        );
      },
    );
  }

  List<Widget> _itemList(List<dynamic> data) {
    List<Widget> options = [];

    data.forEach((item) {
      Widget newItem = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.blue,
        ),
        onTap: () {},
      );

      options..add(newItem)..add(Divider());
    });
    return options;
  }
}
