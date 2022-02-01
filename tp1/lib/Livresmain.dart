import 'package:flutter/material.dart';
import 'package:tp1/objetMedia.dart';

class Livres extends StatelessWidget {
  const Livres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: films.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                  title: Row(children: [
                    SizedBox(
                      //height: 100,
                      child: Image(
                        image: NetworkImage(films[index].imageUrl),
                      ),
                    ),
                    Column(children: [
                      Text(
                        "Title : " + films[index].title,
                        style: const TextStyle(fontSize: 18),
                      ),
                    ])
                  ]),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => Column(children: [
                                  Image(
                                      image:
                                          NetworkImage(films[index].imageUrl)),
                                  Text(
                                    films[index].description,
                                    style: const TextStyle(fontSize: 18),
                                  )
                                ])));
                  });
            }));
  }
}
