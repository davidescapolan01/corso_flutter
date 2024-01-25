import 'package:flutter/material.dart';

class CardTesto extends StatefulWidget {
  CardTesto({super.key, required this.value});
  var value;

  @override
  State<CardTesto> createState() => _CardTestoState();
}

class _CardTestoState extends State<CardTesto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[700],
      height: 100,
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 8),
      child: Text('${widget.value}'),
    );
  }
}