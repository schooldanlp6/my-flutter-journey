import 'package:flutter/material.dart';

class DrawerOverlay extends StatefulWidget {
  const DrawerOverlay({super.key});

  @override
  State<DrawerOverlay> createState() => DrawerOverlayState();
}

class DrawerOverlayState extends State<DrawerOverlay> with SingleTickerProviderStateMixin {
  bool _open = false;
  late AnimationController _controller;

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
