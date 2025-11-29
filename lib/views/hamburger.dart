import 'package:flutter/material.dart';
import 'package:superapp/tasks/config.dart';

class DrawerOverlay extends StatefulWidget {
  const DrawerOverlay({super.key});

  @override
  State<DrawerOverlay> createState() => DrawerOverlayState();
}

class DrawerOverlayState extends State<DrawerOverlay> with SingleTickerProviderStateMixin {
  bool _open = false;
  late AnimationController _controller;
  Config config = new Config();

    @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
  }

  void toggle() {
    setState(() {
      _open = !_open;
      _open ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  AnimationController get controller => _controller;


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Fix the overlay not allowing touches
        IgnorePointer(
          ignoring: !_open,
          // FADE DARKEN BACKGROUND
          child: AnimatedOpacity(
            opacity: _open ? 1.0 : 0.0,
            duration: Duration(milliseconds: 250),
            child: GestureDetector(
              onTap: toggle,
              child: Container(
                color: Colors.black54,
             ),
            ),
          ),
        ),
        // SLIDE + FADE DRAWER
        AnimatedPositioned(
          duration: Duration(milliseconds: 250),
          left: _open ? 0 : -250,
          top: 0,
          bottom: 0,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 250),
            opacity: _open ? 1.0 : 0.0,
            child: Container(
              width: 250,
              color: config.primaryaccent,
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Container(
                      color: const Color.fromARGB(87, 68, 137, 255),
                      child: Text(
                        "Navigator™",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  // Make it loop thru more elegant later in development
                  ListTile(
                    title: Text("Home"),
                    onTap: toggle,
                  ),
                  ListTile(
                    title: Text("Settings"),
                    onTap: toggle,
                  ),
                  ListTile(
                    title: Text("Contact"),
                    onTap: toggle,
                  ),
                  ListTile(
                    title: Text("About"),
                    onTap: toggle,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
