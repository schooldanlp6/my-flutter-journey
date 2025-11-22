import 'package:flutter/material.dart';
import 'dart:ui';
import 'widgets.dart';

void main() => runApp(SuperAppScaffold());

class SuperAppScaffold extends StatelessWidget {
  const SuperAppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = new Config();
    final body = config.getbody();
    return MaterialApp(
      theme: ThemeData(
      colorScheme: config.getColorScheme(),),
      home: Scaffold(
        appBar: AppBar(title: Text(config.title),),
        body: Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/wallpapers/net.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Container(
              color: Colors.black.withOpacity(0.2), // optional dark overlay
            ),
          ),
        ), 
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(0, 0, 0, 0), const Color.fromARGB(26, 244, 67, 54)],
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCards(heading: "PCBs", imagepath: 'assets/images/pcb.png', text: "pcb = Printed Curcuit Board is a board that has tiny copper traces embedded in a non conductive material like plastic"),
                CustomCards(heading: "CPUs", imagepath: 'assets/images/cpu.png', text: "cpu = Core Processing Unit is a Chip that does general purpose computing and makes your PC work"),
                CustomCards(heading: "GPUs", imagepath: 'assets/images/gpu.png', text: "gpu = Graphics Processing Unit is a Chip than can render heavy 3D scenes thanks to its awfully stupid and yet smart design"),
              ],
            ),
          ),
          ),
        ),
        ]
        ),
      ),
    );
  }
}

class SuperAppBar extends StatelessWidget {
  const SuperAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class SuperApp extends StatelessWidget {
  const SuperApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
/*
class SuperApp extends StatefulWidget{
const SuperApp({super.key})

@override
State<StatefulWidget> createState() {
  return Widget(
    Column(),
  );
}}
*/

class Config {
  ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Colors.redAccent);
  String title = "SuperApp™";
  String body = "Hello World!";
  double headersize = 56;

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
