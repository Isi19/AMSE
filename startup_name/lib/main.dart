import 'package:english_words/english_words.dart'; // Add this line.
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
        body: Center(
          // Drop the const, and
          //child: Text('Hello World'),        // Replace this text...
          child: RandomWords(), // With this text.
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWorsState createState() => _RandomWorsState();
}

class _RandomWorsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return Text(wordPair.asPascalCase);
  }
}
