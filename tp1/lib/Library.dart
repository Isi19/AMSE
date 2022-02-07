import 'package:flutter/material.dart';
import 'package:tp1/Livresmain.dart';

import 'Filmsmain.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 20,
            title: const Text("Library"),
            bottom: const TabBar(
              tabs: [Tab(text: "Books"), Tab(text: "Films")],
            ),
          ),
          body: const TabBarView(
            children: [Livres(), Films()],
          ),
        ),
      ),
    );
  }
}
