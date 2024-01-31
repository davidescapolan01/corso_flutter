import 'package:flutter/material.dart';

import 'PrimaPagina.dart';

class SecondaPagina extends StatelessWidget {
  const SecondaPagina({super.key, required this.data});
  final String data;

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
            Text('Seconda Pagina',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            Text(data, style: TextStyle(fontSize: 25)),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute<void>(builder: (context){return PrimaPagina();})); // aggiunge una schermata sopra a quella gia esistente
                Navigator.pushNamed(context, '/terza');
                //Navigator.pop(context);
              },
              child: Text('cambia pagina'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
