import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tindr/model/joke.dart';

Future<Joke> getJoke() async {
  try {
    final resp =
        await http.get(Uri.parse("https://api.chucknorris.io/jokes/random"));
    return Joke.fromJson(jsonDecode(resp.body));
  } catch (e) {
    return const Joke(value: "PLEASE CHECK YOUR INTERNET CONNECTION");
  }
}
