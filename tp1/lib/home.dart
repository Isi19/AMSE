import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tp1/objetMedia.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('News'),
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: home.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Row(children: [
                  SizedBox(
                    //height: 100,
                    child: Image(
                      image: NetworkImage(home[index].imageUrl, scale: 1),
                    ),
                  ),
                ]),
                subtitle: Text(
                  "Title : " + home[index].description,
                  style: const TextStyle(fontSize: 18),
                ),
              );
            }));
  }
}
