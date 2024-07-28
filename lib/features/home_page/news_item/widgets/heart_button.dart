import 'package:flutter/material.dart';

class HeartButton extends StatefulWidget {
  const HeartButton({super.key});

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  bool isFavoriteText = false;
  bool isFavorite = false;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      if (isFavorite) {
        _counter--;
      } else {
        _counter++;
      }
      isFavorite = !isFavorite;
      isFavoriteText = !isFavoriteText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _incrementCounter,
          icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_outline_rounded
          ),
          color: isFavorite ? Colors.red : Colors.grey,
        ),
        Text(
          '$_counter',
          style: TextStyle(
            fontSize: 16,
            color: isFavoriteText ? Colors.red : Colors.grey,
          ),
        ),
      ],
    );
  }
}