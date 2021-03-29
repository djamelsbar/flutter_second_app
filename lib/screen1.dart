import 'package:flutter/material.dart';
 
class Screen1 extends StatelessWidget {

  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).pushReplacementNamed( 
      '/x2'
    );
  }
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: Text("screen 1 Page"),
      ),
      body: Center(
        child: InkWell(
          onTap: () =>  selectScreen(context),
          child: Column(
            children: [
              Text(
                routeArg['text'],
                style: TextStyle(fontSize: 35),
              ),
              Text(
                "Go To Screen 2",
                style: TextStyle(fontSize: 35),
              ),
            ],
          ),
        ),
       ),
    );
  }
}