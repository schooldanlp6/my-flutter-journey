import 'package:flutter/material.dart';

class Config {
  ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.redAccent);
  String title = "SuperApp™";
  String body = "Hello World!";
  double headersize = 56;
  Color primaryaccent = Color.fromARGB(255, 255, 229, 229);
  Color secoundaryaccent = Color.fromARGB(226, 255, 229, 229);
  List<String> menuitems = [" Home", " Settings", " Contact", " About"];
  List<IconData> menuicons = [Icons.home, Icons.settings, Icons.contact_support, Icons.info];
  List<void Function()> menuactions = [
    () => print("Open file A"),
    () => print("Open file B"),
    () => print("Open file C"),
    () => print("You should not build this"),
  ];


  ColorScheme getColorScheme() {
    return colorScheme;
  }

  String gettitle() {
    return title;
  }

  String getbody() {
    return body;
  }
}