import 'package:shared_preferences/shared_preferences.dart';
import 'package:tindr/model/joke.dart';

Future<List<Joke>> getJokesFromLocalStore() async {
  final prefs = await SharedPreferences.getInstance();
  final stringList = (prefs.getStringList("jokes") ?? <String>[]);
  var jokeList = <Joke>[];
  for (var s in stringList) {
    jokeList.add(Joke(value: s));
  }
  return jokeList;
}

Future<void> setJokesToLocalStore(List<Joke> list) async {
  final prefs = await SharedPreferences.getInstance();
  var stringList = <String>[];
  for (var joke in list) {
    stringList.add(joke.value);
  }
  prefs.setStringList("jokes", stringList);
}
