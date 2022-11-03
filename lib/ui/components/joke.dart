import "package:flutter/material.dart";

class JokeText extends StatelessWidget {
  const JokeText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).backgroundColor),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.black,
              fontFamily: "monospace",
              fontSize: 20,
              fontWeight: FontWeight.w500),
        ));
  }
}
