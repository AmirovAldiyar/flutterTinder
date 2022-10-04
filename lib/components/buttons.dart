import "package:flutter/material.dart";

class Buttons extends StatelessWidget {
  const Buttons({super.key, required this.like, required this.dislike});

  final VoidCallback like;
  final VoidCallback dislike;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: dislike,
            tooltip: 'dislike',
            shape: Border.all(
                style: BorderStyle.none, width: 0.8, color: Colors.black),
            child: const Icon(Icons.close),
          ),
          FloatingActionButton(
            onPressed: like,
            tooltip: 'like',
            shape: Border.all(
                style: BorderStyle.none, width: 0.8, color: Colors.black),
            child: const Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
