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
      theme:
          ThemeData(accentColor: Colors.pinkAccent, primaryColor: Colors.green),
      home: MyHomePage(),
      routes: {
        '/x1': (context) => Screen1(),
        '/x2': (context) => Screen2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  void selectScreen(BuildContext ctx, int num) {
    Navigator.of(ctx)
        .pushNamed(num == 2 ? '/x1' : '/x2', arguments: {'text': "sdf"});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.category),text: ("Screen 1"),),
              Tab(icon: Icon(Icons.sanitizer),text: ("Screen 2"),),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(body: Center(child: Text("Text 1")),),
            Scaffold(body: Center(child: Text("Text 2")),),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                onTap: () => selectScreen(context, 1),
                subtitle: Text(
                  "Go To Screen 1",
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                title: Text(
                  "Go To Screen 1",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                subtitle: Text(
                  "Go To Screen 2",
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () => selectScreen(context, 2),
                title: Text(
                  "Go To Screen 2",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
