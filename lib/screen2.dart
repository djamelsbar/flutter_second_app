import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacementNamed( 
      '/x1',arguments: {'text': "sdf"}
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("screen 2  Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: () =>  selectScreen(context),
          child: Text(
            "Go To Screen 1",
            style: TextStyle(fontSize: 35),
          ),
        ),
       ),
    );
  }
}
