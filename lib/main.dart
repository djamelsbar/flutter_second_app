import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isSwiched = false;
  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What\'s Your favurite color?",
      "answer": ['Black', 'Bleu', 'Orange', 'Green']
    },
    {
      "questionText": "What\'s Your favurite Animal?",
      "answer": ['Cat', 'Sheep', 'Dog', 'Wolf']
    },
    {
      "questionText": "What\'s Your favurite language?",
      "answer": ['En', 'Ar', 'Fr', 'Al']
    },
    {
      "questionText": "What\'s Your favurite Country?",
      "answer": ['Algeria', 'USA', 'France', 'England']
    },
    {
      "questionText": "What\'s Your favurite color?",
      "answer": ['Black', 'Bleu', 'Orange', 'Green']
    },
    {
      "questionText": "What\'s Your favurite Animal?",
      "answer": ['Cat', 'Sheep', 'Dog', 'Wolf']
    },
    {
      "questionText": "What\'s Your favurite language?",
      "answer": ['En', 'Ar', 'Fr', 'Al']
    },
    {
      "questionText": "What\'s Your favurite Country?",
      "answer": ['Algeria', 'USA', 'France', 'England']
    },
    {
      "questionText": "What\'s Your favurite color?",
      "answer": ['Black', 'Bleu', 'Orange', 'Green']
    },
    {
      "questionText": "What\'s Your favurite Animal?",
      "answer": ['Cat', 'Sheep', 'Dog', 'Wolf']
    },
    {
      "questionText": "What\'s Your favurite language?",
      "answer": ['En', 'Ar', 'Fr', 'Al']
    },
    {
      "questionText": "What\'s Your favurite Country?",
      "answer": ['Algeria', 'USA', 'France', 'England']
    },
    {
      "questionText": "What\'s Your favurite color?",
      "answer": ['Black', 'Bleu', 'Orange', 'Green']
    },
    {
      "questionText": "What\'s Your favurite Animal?",
      "answer": ['Cat', 'Sheep', 'Dog', 'Wolf']
    },
    {
      "questionText": "What\'s Your favurite language?",
      "answer": ['En', 'Ar', 'Fr', 'Al']
    },
    {
      "questionText": "What\'s Your favurite Country?",
      "answer": ['Algeria', 'USA', 'France', 'England']
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            accentColor: Colors.pinkAccent, primaryColor: Colors.green),
        home: Scaffold(
          appBar: AppBar(title: Text("Quiz App")),
          body: Container(
            
          ),
        ));
  }
}
