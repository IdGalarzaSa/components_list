import 'package:components_list/src/pages/alert_page.dart';
import 'package:components_list/src/pages/avatar_page.dart';
import 'package:flutter/material.dart';
import 'package:components_list/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Components List',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => HomePage(),
        "alert": (BuildContext context) => AlertPage(),
        "avatar": (BuildContext context) => AvatarPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
