import 'package:flutter/material.dart';

class CommentsButton extends StatefulWidget {
  const CommentsButton({super.key});


  @override
  State<CommentsButton> createState() => _CommentsButton();
}

class _CommentsButton extends State<CommentsButton> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
        });
      },
      icon: const Icon(Icons.textsms_outlined),
      color: Colors.grey,
    );
  }
}