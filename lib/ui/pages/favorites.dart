import 'package:flutter/material.dart';
import 'package:tindr/model/joke.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage(
      {super.key, required this.jokesList, required this.removeJoke});

  final List<Joke> jokesList;
  final Function(int) removeJoke;

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  void _removeJoke(int index) {
    setState(() {
      widget.removeJoke(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Favourites"),
      ),
      body: ListView.builder(
        itemCount: widget.jokesList.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            onTap: () => _removeJoke(index),
            title: Text(widget.jokesList[index].value),
          );
        },
      ),
    ));
  }
}
