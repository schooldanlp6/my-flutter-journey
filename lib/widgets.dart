import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  final String heading;
  final String imagepath;
  final String text;
  final double radius = 10;

  const CustomCards({
    required this.heading,
    required this.imagepath,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 20, 20, 20), const Color.fromRGBO(163, 163, 163, 255)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(radius)
        ),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(heading, style: TextStyle(fontSize: 56, color: Colors.white),softWrap: true,overflow: TextOverflow.ellipsis,),
          ClipRRect( 
          borderRadius: BorderRadiusGeometry.circular(radius-2),
          child: Image.asset(imagepath, fit: BoxFit.cover,),
          ),
          Text(text, style: TextStyle(fontSize: 16, color: Colors.white),softWrap: true,),
          ],
        )
      )
    );
  }
}