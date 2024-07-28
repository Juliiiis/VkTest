import 'package:flutter/material.dart';

class SendButton extends StatefulWidget {
  const SendButton({super.key});


  @override
  State<SendButton> createState() => _SendButton();
}

class _SendButton extends State<SendButton> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        setState(() {
        });
      },
      icon: const Icon(Icons.subdirectory_arrow_right_rounded),
      color: Colors.grey,
    );
  }
}