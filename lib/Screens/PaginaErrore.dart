import 'package:flutter/material.dart';

class PaginaErrore extends StatelessWidget {
  const PaginaErrore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo App'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Pagina Errore',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
