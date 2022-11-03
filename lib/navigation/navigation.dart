import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tindr/model/joke.dart';
import 'package:tindr/state/actions.dart';
import 'package:tindr/ui/pages/favorites.dart';

void openFavourites(context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return StoreConnector<List<Joke>, Function(int id)>(
          converter: (store) =>
              ((int id) => store.dispatch(RemoveJokeAction(id))),
          builder: (context, removeJoke) {
            return StoreConnector<List<Joke>, List<Joke>>(
                converter: (store) => store.state,
                builder: (context, jokeList) {
                  return FavouritesPage(
                    removeJoke: removeJoke,
                    jokesList: jokeList,
                  );
                });
          });
    },
  ));
}
