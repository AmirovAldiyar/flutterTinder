import 'package:flutter/material.dart';
import 'package:tindr/api/jokes.dart';
import 'package:tindr/model/joke.dart';
import 'package:tindr/navigation/navigation.dart';
import 'package:tindr/ui/components/joke.dart';
import 'package:tindr/ui/components/buttons.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.title, required this.addJoke});

  final String title;
  final Function(Joke j) addJoke;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Joke _joke = const Joke(value: "No Jokes Yet, Press like or dislike button!");

  void _updateJoke() {
    setState(() {
      try {
        getJoke().then((joke) => {_joke = joke});
      } catch (e) {
        _joke = const Joke(value: "PLEASE CHECK YOUR INTERNET CONNECTION");
      }
    });
  }

  void _likeJoke() {
    _updateJoke();
    if (_joke.value != "No Jokes Yet, Press like or dislike button!" &&
        _joke.value != "PLEASE CHECK YOUR INTERNET CONNECTION") {
      widget.addJoke(_joke);
    }
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
        bottomSheet: Buttons(
            like: _likeJoke,
            dislike: _updateJoke,
            openFavourites: () => openFavourites(context)),
      ),
    );
  }
}
