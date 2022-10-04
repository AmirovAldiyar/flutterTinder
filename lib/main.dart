import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:tindr/components/joke.dart';
import 'package:tindr/components/buttons.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'main.freezed.dart';
part 'main.g.dart';

void main() {
  runApp(const MyApp());
}

@freezed
class Joke with _$Joke {
  const factory Joke({
    required String value,
  }) = _Joke;

  factory Joke.fromJson(Map<String, Object?> json) => _$JokeFromJson(json);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.amber, backgroundColor: Colors.amber.shade200),
      home: const MyHomePage(title: 'Tinder With Chuck Norris'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Joke _joke = const Joke(value: "No Jokes Yet!!!");

  void _updateJoke() {
    setState(() {
      http
          .get(Uri.parse("https://api.chucknorris.io/jokes/random"))
          .then((resp) => {_joke = Joke.fromJson(jsonDecode(resp.body))});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Here\'s a joke!!',
            ),
            JokeText(text: _joke.value),
          ],
        ),
      ),
      bottomSheet: Buttons(like: _updateJoke, dislike: _updateJoke),
    ));
  }
}
