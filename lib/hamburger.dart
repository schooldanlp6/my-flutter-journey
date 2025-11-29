import 'package:flutter/material.dart';

class DrawerOverlay extends StatefulWidget {
  const DrawerOverlay({super.key});

  @override
  State<DrawerOverlay> createState() => DrawerOverlayState();
}

class DrawerOverlayState extends State<DrawerOverlay> {
  bool _open = false;

  void toggle() {
    setState(() => _open = !_open);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // FADE DARKEN BACKGROUND
        AnimatedOpacity(
          opacity: _open ? 1.0 : 0.0,
          duration: Duration(milliseconds: 250),
          child: GestureDetector(
            onTap: toggle,
            child: Container(
              color: Colors.black54,
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
              color: Colors.white,
              child: ListView(
                children: [
                  DrawerHeader(
                    child: Text(
                      "Menu",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  ListTile(
                    title: Text("About"),
                    onTap: toggle,
                  ),
                  ListTile(
                    title: Text("Settings"),
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
