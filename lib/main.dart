import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); //ctor

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) { //I method (build -> costruisce widget)
    return MaterialApp( //accesso ad ambiente google
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), //schermata iniziale dell'app (fornisce titolo)
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); //pagina iniaiale app (richiede titolo)
  final String title; //variabile titolo richiesta

  @override
  State<MyHomePage> createState() => _MyHomePageState(); //classe dello stato del widget
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [ //array di widget da inserire a dx del titolo
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_alarm_outlined)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_alarm_outlined)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_alarm_outlined)),
        ],
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.amber, //colore componenti toolbar
        systemOverlayStyle: SystemUiOverlayStyle.dark, //colore icone tendina android
        elevation: 15, //distanza (profondità) toolbar da body
        shadowColor: Colors.black,
        //toolbarHeight: 100, //altezza toolbar 56 default ?
        //toolbarOpacity: 0.5, //opacity di ciò che c'è dentro
        //titleTextStyle: TextStyle(), //sovrascrive lo stile del testo
        //surfaceTintColor: Colors.green, //sopra il backgrond
        //shape: LinearBorder( bottom: LinearBorderEdge(size: 0.8) ), //tipo e misure dei bordi
      ),
      //#region Fino_a_WidgetCatalog
      /*body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 300,
              child: Image.asset(
                'images/argo.png',
                height: 200,
                fit: BoxFit.fitHeight,
                alignment: Alignment.bottomLeft,
              ),
            ),
            const Text(
              'You have pushed the button this many times:',
              textAlign: TextAlign.center,
              /*style: TextStyle(
                fontFamily: 'ClimateCrisis',
                color: Colors.orange,
                backgroundColor: Colors.lightBlueAccent,
                fontWeight: FontWeight.w800,
                fontSize: 30,
                shadows: [
                  Shadow(
                    offset: Offset(5.5,5.5),
                    blurRadius: 10.0,
                    color: Colors.purple,
                  )
                ],
                letterSpacing: 5,
                wordSpacing: 15,
              ),*/
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            /*const Image(
              image: AssetImage('images/argo.png'),
            ),*/
            TextButton.icon(
                onPressed: () => {},
                icon: const Icon(Icons.access_alarm_outlined),
                label: const Text('Bottone1'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.greenAccent,
                  backgroundColor: Colors.black38,
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 0),
                  visualDensity: const VisualDensity(horizontal: 4.0, vertical: 1.0),
                )
            ),
            ElevatedButton.icon(
              onPressed: () => {},
              icon: const Icon(Icons.ac_unit_outlined),
              label: const Text('Bottone2'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
            OutlinedButton.icon(
              onPressed: () => {},
              icon: const Icon(Icons.accessibility_new_outlined),
              label: const Text('Bottone3'),
            ),
            const Icon(
              Icons.account_circle_outlined,
            ),
          ],
        ),
      ),*/
      //#endregion
      body: Container(
        //#region Row_&_Column
        /*color: Colors.orange,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          verticalDirection: VerticalDirection.up,
          children: [
            Icon(Icons.adb_outlined),
            Icon(Icons.ac_unit_outlined),
            Icon(Icons.account_tree_outlined),
            Icon(Icons.access_alarm_outlined),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.ltr,
          children: [
            Icon(Icons.adb_outlined),
            Icon(Icons.ac_unit_outlined),
            Icon(Icons.account_tree_outlined),
            Icon(Icons.access_alarm_outlined),
          ],
        )*/
        //#endregion
        //#region Container_&_Padding
        color: Colors.orange,
        padding: EdgeInsets.all(10),
        child: Text(
          "ciaoi"
        ),
        //#endregion
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
