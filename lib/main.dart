import 'package:flutter/material.dart';

void main () => runApp(SuperAppScaffold());

class SuperAppScaffold extends StatelessWidget {
  const SuperAppScaffold({super.key});
  
  @override
  Widget build(BuildContext context) {
    Config config = new Config();
    final body = config.getbody();

    return MaterialApp(
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
          ),]
        ),
      )
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

  ColorScheme getColorScheme(){
    return colorScheme;
  }

  String gettitle(){
    return title;
  }

  String getbody() {
    return body;
  }


}