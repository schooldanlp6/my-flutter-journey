import 'package:flutter/material.dart';

class Config {
  ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.redAccent);
  String title = "SuperApp™";
  String body = "Hello World!";
  double headersize = 56;
  Color primaryaccent = Color.fromARGB(255, 255, 229, 229);
  Color secoundaryaccent = Color.fromARGB(226, 255, 229, 229);

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