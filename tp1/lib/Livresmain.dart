import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tp1/Detail.dart';
import 'package:tp1/objetMedia.dart';

class Livres extends StatelessWidget {
  const Livres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Li());
  }
}

class Li extends StatefulWidget {
  const Li({Key? key}) : super(key: key);

  @override
  _LiState createState() => _LiState();
}

class _LiState extends State<Li> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: livres.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildRow(livres[index]);
        });
  }

  Widget _buildRow(ObjetMedia media) {
    final alreadySaved = saved.contains(media);
    return ListTile(
        leading: SizedBox(
            child: Image(
          image: NetworkImage(media.imageUrl),
        )),
        title: Text(
          "Title : " + media.title,
          style: const TextStyle(fontSize: 18),
        ),
        trailing: IconButton(
          icon: (alreadySaved
              ? const Icon(Icons.favorite)
              : const Icon(Icons.favorite_border)),
          color: alreadySaved ? Colors.red : null,
          onPressed: () {
            setState(() {
              if (alreadySaved) {
                saved.remove(media);
              } else {
                saved.add(media);
              }
            });
          },
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute<void>(
                  builder: (context) => Detail(media: media)));
        });
  }
}
