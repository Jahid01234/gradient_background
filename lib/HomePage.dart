import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  Widget build(BuildContext context){
    return Scaffold(

      // 1st app Bar
      appBar: AppBar(
        title: Text("Gradient Background Example"),
        centerTitle: true,
        elevation: 10,
        shadowColor: Colors.white,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.grey,
                  Colors.blueGrey,
                ],
                 begin: Alignment.topCenter,
                 end: Alignment.bottomLeft,
                 tileMode: TileMode.mirror,
                // transform: GradientRotation(math.pi/4)
              ),
            boxShadow: [
              BoxShadow(
                color: Colors.white30,
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(4,4)
              ),
              BoxShadow(
                  color: Colors.white,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(-4,-4)
              )
            ]
          ),

        ),
      ),




      // 2nd Body
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrangeAccent,
              Colors.orange,
              Colors.pink.shade400,
            ],
            // begin: Alignment.topCenter,
            // end: Alignment.bottomLeft,
            begin: FractionalOffset(1.0, 0.5),
            end: FractionalOffset(0.0, 0.8),
            stops: [0.0, 0.4, 1.0],
            tileMode: TileMode.mirror,
           // transform: GradientRotation(math.pi/4)
          )
        ),
      ) ,
    );
  }
}