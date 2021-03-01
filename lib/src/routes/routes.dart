import 'package:components_list/src/pages/animated_container_page.dart';
import 'package:components_list/src/pages/card_page.dart';
import 'package:components_list/src/pages/checkbox_page.dart';
import 'package:components_list/src/pages/date_picker_page.dart';
import 'package:components_list/src/pages/dropdown_page.dart';
import 'package:components_list/src/pages/inputs_page.dart';
import 'package:components_list/src/pages/slider_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:components_list/src/pages/alert_page.dart';
import 'package:components_list/src/pages/avatar_page.dart';
import 'package:components_list/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  final appRoutes = <String, WidgetBuilder>{
    "/": (BuildContext context) => HomePage(),
    "alert": (BuildContext context) => AlertPage(),
    "avatar": (BuildContext context) => AvatarPage(),
    "card": (BuildContext context) => CardPage(),
    "animatedContainer": (BuildContext context) => AnimatedContainerPage(),
    "inputs": (BuildContext context) => InputPage(),
    "datePicker": (BuildContext context) => DatePickerPage(),
    "dropdown": (BuildContext context) => DropdownPage(),
    "slider": (BuildContext context) => SliderPage(),
    "checkbox": (BuildContext context) => CheckboxPage(),
  };
  return appRoutes;
}
