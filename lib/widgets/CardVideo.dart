import 'package:flutter/material.dart';

class CardVideo extends StatelessWidget {
  const CardVideo({super.key, required this.value});

  final int value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[300],
      height: 100,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 8),
      child: Text('$value'),
    );
  }
}