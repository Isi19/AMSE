import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'objetMedia.dart';

class Films extends StatelessWidget {
  const Films({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
          ),
          itemCount: films.length,
          itemBuilder: (BuildContext context, int index) {
            AlignmentDirectional.bottomCenter;
            return Stack(alignment: AlignmentDirectional.bottomEnd, children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(7.5),
                  child: Image(image: NetworkImage(films[index].imageUrl))),
              Text(films[index].title),
            ]);
          }),
    ));
  }
}
