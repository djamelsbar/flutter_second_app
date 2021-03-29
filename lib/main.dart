import 'package:flutter/material.dart';
import 'screen1.dart';
import 'screen2.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            accentColor: Colors.pinkAccent, primaryColor: Colors.green),
        home: MyHomePage(),
        routes: {
          '/x1': (context) => Screen1(),
          '/x2': (context) => Screen2(),
        },
        );
  }
}

class MyHomePage extends StatelessWidget {
  void selectScreen(BuildContext ctx,int num){
    Navigator.of(ctx).pushNamed( 
      num==2 ? '/x1':'/x2',
      arguments: {
        'text':"sdf"
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body:  Center(
        child: Column( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () =>  selectScreen(context, 1),
                child: Text(
                  "Go To Screen 1",
                  style: TextStyle(fontSize: 35),
                ),
              ),
              InkWell(
                onTap: () =>  selectScreen(context, 2),
                child: Text(
                  "Go To Screen 2",
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ],
          ),
      ), 
    );
  }
}
