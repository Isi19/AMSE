import 'package:flutter/material.dart';
import 'package:tp1/objetMedia.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Favorites"),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: saved.length,
            itemBuilder: (BuildContext context, int index) {
              return _buildRow(saved[index]);
            }));
  }

  ListTile _buildRow(ObjetMedia media) {
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
        icon: const Icon(Icons.favorite),
        color: Colors.red,
        onPressed: () {
          setState(() {
            saved.remove(media);
          });
        },
      ),
    );
  }
}
