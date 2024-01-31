

import 'package:corso_flutter/Screens/PaginaErrore.dart';
import 'package:corso_flutter/Screens/SecondaPagina.dart';
import 'package:flutter/material.dart';

import 'Screens/PrimaPagina.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch(settings.name) {
      case '/prima':
        return MaterialPageRoute(builder: (context) => PrimaPagina());
      case '/seconda':
        if(args is String)
          return MaterialPageRoute(builder: (context) => SecondaPagina(data: args));
        else
          return MaterialPageRoute(builder: (context) => PaginaErrore());
      default:
        return MaterialPageRoute(builder: (context) => PaginaErrore());
    }
  }
}