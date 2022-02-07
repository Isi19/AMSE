import 'package:flutter/material.dart';
import 'package:tp1/objetMedia.dart';

class Detail extends StatelessWidget {
  final ObjetMedia media;
  const Detail({Key? key, required this.media}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(media.title),
        ),
        body: Column(children: [
          SizedBox(child: Image(image: NetworkImage(media.imageUrl))),
          Text(
            "\n" + media.description,
            style: const TextStyle(fontSize: 18),
          )
        ]));
  }
}
