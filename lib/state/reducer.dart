import 'package:tindr/main.dart';
import 'package:tindr/model/joke.dart';
import 'package:tindr/state/actions.dart';
import 'package:tindr/store/store.dart';

List<Joke> listReducer(List<Joke> state, dynamic action) {
  if (action is AddJokeAction) {
    var newState = List<Joke>.from(state)..add(action.joke);
    setJokesToLocalStore(newState);
    return newState;
  }
  if (action is RemoveJokeAction) {
    var newState = List<Joke>.from(state)..removeAt(action.id);
    setJokesToLocalStore(newState);
    return newState;
  }
  if (action is SetJokesAction) {
    return action.jokes;
  }
  return state;
}
