import 'package:flutter/material.dart';

import 'objetMedia.dart';

class Films extends StatelessWidget {
  const Films({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.removePadding(
            context: context, removeTop: true, child: const Fi()));
  }
}

class Fi extends StatefulWidget {
  const Fi({Key? key}) : super(key: key);

  @override
  _FiState createState() => _FiState();
}

class _FiState extends State<Fi> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 40,
          mainAxisSpacing: 40,
        ),
        itemCount: films.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildItem(films[index]);
        });
  }

  Widget _buildItem(ObjetMedia media) {
    final alreadySaved = saved.contains(media);
    return Column(children: [
      Expanded(
          child: Stack(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(7.5),
            child: SizedBox(child: Image(image: NetworkImage(media.imageUrl)))),
        Positioned(
            top: 0,
            right: 0,
            child: IconButton(
              icon: (alreadySaved
                  ? const Icon(Icons.favorite)
                  : const Icon(Icons.favorite_border)),
              color: alreadySaved ? Colors.red : null,
              onPressed: () {
                setState(() {
                  if (alreadySaved) {
                    //save.remove(key)
                    saved.remove(media);
                  } else {
                    saved.add(media);
                  }
                });
              },
            )),
      ])),
      Text(media.title),
    ]);
  }
}
