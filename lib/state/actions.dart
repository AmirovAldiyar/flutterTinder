import 'package:tindr/model/joke.dart';

class AddJokeAction {
  final Joke _joke;

  Joke get joke => _joke;

  AddJokeAction(this._joke);
}

class RemoveJokeAction {
  final int _id;

  int get id => _id;

  RemoveJokeAction(this._id);
}

class SetJokesAction {
  final List<Joke> _jokes;

  List<Joke> get jokes => _jokes;

  SetJokesAction(this._jokes);
}
