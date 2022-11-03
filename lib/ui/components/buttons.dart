import "package:flutter/material.dart";

class Buttons extends StatelessWidget {
  const Buttons(
      {super.key,
      required this.like,
      required this.dislike,
      required this.openFavourites});

  final VoidCallback like;
  final VoidCallback dislike;
  final VoidCallback openFavourites;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: "dislike",
            onPressed: dislike,
            tooltip: 'dislike',
            shape: Border.all(
                style: BorderStyle.none, width: 0.8, color: Colors.black),
            child: const Icon(Icons.close),
          ),
          SizedBox(
              width: 90,
              height: 60,
              child: FloatingActionButton(
                heroTag: "favourites",
                onPressed: openFavourites,
                tooltip: 'list',
                shape: Border.all(
                    style: BorderStyle.none, width: 0.8, color: Colors.black),
                child: const Text("Favorites"),
              )),
          FloatingActionButton(
            heroTag: "like",
            onPressed: like,
            tooltip: 'like',
            shape: Border.all(
                style: BorderStyle.none, width: 0.8, color: Colors.black),
            child: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
