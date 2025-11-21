import 'package:flutter/material.dart';
import 'widgets.dart';

void main() => runApp(SuperAppScaffold());

class SuperAppScaffold extends StatelessWidget {
  const SuperAppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    Config config = new Config();
    final body = config.getbody();

    /*    return MaterialApp(
    theme: ThemeData(
      colorScheme: config.getColorScheme(),
    ),
    title: config.gettitle(),
    home: Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text(config.gettitle()),
        actions: [
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Image.asset(
            'assets/images/pcb.png',
            width: 200,
          ),
          const SizedBox(height: 20),
          const Text(
            "This is my text below the image",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      //body
    ),
  );
*/
    return MaterialApp(
      theme: ThemeData(
      colorScheme: config.getColorScheme(),
      cardTheme: CardThemeData(
/*      elevation: BoxDecoration(
      gradient: LinearGradient(
            colors: [Colors.black12, Colors.red],
            begin: Alignment.bottomCenter,
            end: Alignment.topRight,
      )*/
      )
      ),

      home: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black12, Colors.red],
            begin: Alignment.bottomCenter,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Row(
            
            children: [
              CustomCards(heading: "PCBs", imagepath: 'assets/images/pcb.png', text: "pcb = Printed Curcuit Board is a board that has tiny copper traces along its thiiggy"),
            ],
          ),
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
