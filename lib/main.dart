import 'package:flutter/material.dart';
void main(){
  runApp(gradientappbar());
}
class gradientappbar extends StatelessWidget {
  const gradientappbar({Key? key}) : super(key: key);
AppBar _buildAppbar(){
  return AppBar(
    title:Text("Gradient APPBAR"),
    backgroundColor: Colors.transparent,
    elevation: 0,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255,176,186,231),
          Color.fromARGB(255,166,112,232),
          Color.fromARGB(255,131,123,232),
          Color.fromARGB(255,104,132,231),
        ],
          transform: GradientRotation(90),

        )
      ),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppbar(),
      ),
    );
  }
}
