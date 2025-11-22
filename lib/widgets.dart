import 'package:flutter/material.dart';

class CustomCards extends StatelessWidget {
  final String heading;
  final String imagepath;
  final String text;
  final double radius = 36;
  final double padding = 20;

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
        padding: EdgeInsets.all(padding),
        constraints: BoxConstraints(
          maxWidth: 400,
          maxHeight: 500,
          minHeight: 500,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(131, 172, 0, 0), const Color.fromARGB(122, 255, 0, 0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
          borderRadius: BorderRadius.circular(radius)
        ),
        child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(heading, style: TextStyle(fontSize: 46, color: Colors.white),softWrap: true,overflow: TextOverflow.ellipsis,),
          ClipRRect( 
          borderRadius: BorderRadiusGeometry.circular(radius-padding),
          child: Image.asset(imagepath, fit: BoxFit.cover,),
          ),
          Text(text, style: TextStyle(fontSize: 16, color: Colors.white),softWrap: true,),
          ElevatedButton(onPressed: (){
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
              title: Text("More ${heading} info?"),
              content: Text("Get More information about ${heading}"),
              actions: [
                TextButton(onPressed: (){print("Updated View");Navigator.pop(context);}, child: Text("Open In Wiki"))
              ],
              ));}, child: Text("Read more!"))
          ],
        )
      )
    );
  }
}

class WikiAlert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Rest API"),
      content: Text("Get More information about var"),
      actions: [
        TextButton(onPressed: (){print("Updated View");Navigator.pop(context);}, child: Text("Open In Wiki"))
      ]
    );
  }
}