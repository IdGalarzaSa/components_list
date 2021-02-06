import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

final menuProvider = new _MenuProvider();

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  Future<List<dynamic>> loadData() async {
    final dataString = await rootBundle.loadString('lib/data/menu_opts.json');
    Map dataMap = json.decode(dataString);
    options = dataMap['paths'];
    return options;
  }
}
