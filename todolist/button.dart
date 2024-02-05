import "package:flutter/material.dart";

class Mybutton extends StatelessWidget {
  final String text;
  VoidCallback onpressed;

  Mybutton({
    super.key,
    required this.text,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
