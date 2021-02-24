import 'package:components_list/src/pages/card_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:components_list/src/pages/alert_page.dart';
import 'package:components_list/src/pages/avatar_page.dart';
import 'package:components_list/src/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  final appRoutes = <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "alert": (BuildContext context) => AlertPage(),
    "avatar": (BuildContext context) => AvatarPage(),
    "card": (BuildContext context) => CardPage(),
  };
  return appRoutes;
}
