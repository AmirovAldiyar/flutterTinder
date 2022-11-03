import 'package:flutter/material.dart';
import 'package:tindr/model/joke.dart';
import 'package:tindr/state/actions.dart';
import 'package:tindr/state/reducer.dart';
import 'package:tindr/store/store.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:tindr/ui/pages/main.dart';

void main() {
  final store = Store<List<Joke>>(listReducer, initialState: <Joke>[]);

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<List<Joke>> store;

  const MyApp({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getJokesFromLocalStore().then((jokes) {
      store.dispatch(SetJokesAction(jokes));
    });
    return StoreProvider(
        store: store,
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.amber,
                backgroundColor: Colors.amber.shade200),
            home: StoreConnector<List<Joke>, Function(Joke j)>(
              converter: (store) =>
                  ((Joke j) => store.dispatch(AddJokeAction(j))),
              builder: (context, addJoke) {
                return MainPage(
                    title: 'Tinder With Chuck Norris', addJoke: addJoke);
              },
            )));
  }
}
