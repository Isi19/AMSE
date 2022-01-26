import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';  // Add this line.
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          //child: Text('Hello World'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}
}