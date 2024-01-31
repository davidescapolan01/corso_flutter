import 'package:corso_flutter/Screens/SecondaPagina.dart';
import 'package:flutter/material.dart';

class PrimaPagina extends StatelessWidget {
  const PrimaPagina({super.key});

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
            Text('Prima Pagina',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute<void>(builder: (context){return SecondaPagina(data: "ciaooooooooo");}));
                Navigator.pushNamed(context, '/seconda', arguments: 'jkasghdfkjsv h ');
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
