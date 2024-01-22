import 'package:flutter/material.dart';

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
  List<int> lista = [1,2,3,4,5,6,7,8,9,10];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    //#region fino a 14 Stack
    /*return Scaffold(
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
      //#region 1-10 Fino_a_WidgetCatalog
      /*body: Center(
        child: Column(
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

      //#region 11 Row_&_Column
      /*body: Container(

        color: Colors.orange,
        width: 300,
        child: const Column(
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
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          textDirection: TextDirection.ltr,
          children: [
            Icon(Icons.adb_outlined),
            Icon(Icons.ac_unit_outlined),
            Icon(Icons.account_tree_outlined),
            Icon(Icons.access_alarm_outlined),
          ],
        )
      ),*/
      //#endregion

      //#region 12 Container_&_Padding
      /*body: Padding( //spazio attorno a widget che non possono avere margin
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.orange,
          width: 300,
          height: 300,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text("ciaoi"),
          //decoration: BoxDecoration( color: Colors.yellow, border: Border.all(width: 2, color: Colors.indigo), ), //se si usa decoration non devono esserci parametri che la appartengono assegnati esternamente
        ),
      ),*/
      //#endregion

      //#region 13 SizedBox_&_Expanded_&_ConstrainedBox
      /*body: Column(
        children: [
          Container(
              height: 200,
              color: Colors.cyan,
          ),
          /*const SizedBox(
            width: double.infinity,
            height: 15,
          ),*/
          /*Expanded(
            child: Container(
              color: Colors.cyan,
              child: Text('ciao'),
              alignment: Alignment.bottomCenter,
            ),
          ),*/
          ConstrainedBox(
            constraints: BoxConstraints(minHeight: 100, maxHeight: 200),
            child: Container(
              height: 500,
              color: Colors.teal,
            ),
          ),
          Container(
            height: 150,
            color: Colors.greenAccent,
          ),
        ],
      ),*/
      //#endregion

      //#region 14 Stack
      body: Stack(
        children: [
          Container(
            height: 500,
            color: Colors.purpleAccent,
            margin: EdgeInsets.only(top: 150),
          ),
          Positioned.fill(
            child: Container(color: Colors.redAccent, child: Icon(Icons.connecting_airports_sharp)),
            top: 100,
            left: 15,
          ),
        ],
      ),
      //#endregion

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );*/
    //#endregion

    //#region 15 Scroll
    /*return Stack(
      children: [
        Scaffold(
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

          body: const Scrollbar(
            thickness: 5,
            thumbVisibility: true,
            //trackVisibility: true,
            radius: Radius.circular(5),
            scrollbarOrientation: ScrollbarOrientation.right,
            child: SingleChildScrollView(
              //scrollDirection: Axis.horizontal,
              //reverse: true,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mi ac accumsan rhoncus. Nunc mattis, nulla sed tempor dapibus, nibh mauris eleifend ipsum, ac molestie enim metus non quam. Duis sit amet metus gravida, feugiat leo at, vestibulum neque. Suspendisse hendrerit nulla ut justo dictum tincidunt. Duis aliquam elit a tristique suscipit. Suspendisse id ex nec ex elementum luctus. Sed non felis ultricies, interdum diam vitae, cursus tortor. Donec ut nibh non quam porta blandit id ut neque. Maecenas interdum ante imperdiet turpis interdum, id pellentesque est luctus. Vestibulum eu rutrum sem, sit amet ultricies lorem. Praesent blandit vehicula sapien, eu ornare ex ullamcorper eget. Nam massa ex, hendrerit id auctor non, faucibus ut purus. Etiam eget dictum magna. Nam nunc magna, congue at tincidunt vel, consectetur fermentum dui. Etiam risus ex, luctus ac lorem at, ornare tristique purus. Ut porttitor, mi eget elementum gravida, nulla eros faucibus dolor, a tempus ante lectus in orci.'),
                  SizedBox(height: 25,),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mi ac accumsan rhoncus. Nunc mattis, nulla sed tempor dapibus, nibh mauris eleifend ipsum, ac molestie enim metus non quam. Duis sit amet metus gravida, feugiat leo at, vestibulum neque. Suspendisse hendrerit nulla ut justo dictum tincidunt. Duis aliquam elit a tristique suscipit. Suspendisse id ex nec ex elementum luctus. Sed non felis ultricies, interdum diam vitae, cursus tortor. Donec ut nibh non quam porta blandit id ut neque. Maecenas interdum ante imperdiet turpis interdum, id pellentesque est luctus. Vestibulum eu rutrum sem, sit amet ultricies lorem. Praesent blandit vehicula sapien, eu ornare ex ullamcorper eget. Nam massa ex, hendrerit id auctor non, faucibus ut purus. Etiam eget dictum magna. Nam nunc magna, congue at tincidunt vel, consectetur fermentum dui. Etiam risus ex, luctus ac lorem at, ornare tristique purus. Ut porttitor, mi eget elementum gravida, nulla eros faucibus dolor, a tempus ante lectus in orci.'),
                  SizedBox(height: 25,),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mi ac accumsan rhoncus. Nunc mattis, nulla sed tempor dapibus, nibh mauris eleifend ipsum, ac molestie enim metus non quam. Duis sit amet metus gravida, feugiat leo at, vestibulum neque. Suspendisse hendrerit nulla ut justo dictum tincidunt. Duis aliquam elit a tristique suscipit. Suspendisse id ex nec ex elementum luctus. Sed non felis ultricies, interdum diam vitae, cursus tortor. Donec ut nibh non quam porta blandit id ut neque. Maecenas interdum ante imperdiet turpis interdum, id pellentesque est luctus. Vestibulum eu rutrum sem, sit amet ultricies lorem. Praesent blandit vehicula sapien, eu ornare ex ullamcorper eget. Nam massa ex, hendrerit id auctor non, faucibus ut purus. Etiam eget dictum magna. Nam nunc magna, congue at tincidunt vel, consectetur fermentum dui. Etiam risus ex, luctus ac lorem at, ornare tristique purus. Ut porttitor, mi eget elementum gravida, nulla eros faucibus dolor, a tempus ante lectus in orci.'),
                  SizedBox(height: 25,),
                  Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus mi ac accumsan rhoncus. Nunc mattis, nulla sed tempor dapibus, nibh mauris eleifend ipsum, ac molestie enim metus non quam. Duis sit amet metus gravida, feugiat leo at, vestibulum neque. Suspendisse hendrerit nulla ut justo dictum tincidunt. Duis aliquam elit a tristique suscipit. Suspendisse id ex nec ex elementum luctus. Sed non felis ultricies, interdum diam vitae, cursus tortor. Donec ut nibh non quam porta blandit id ut neque. Maecenas interdum ante imperdiet turpis interdum, id pellentesque est luctus. Vestibulum eu rutrum sem, sit amet ultricies lorem. Praesent blandit vehicula sapien, eu ornare ex ullamcorper eget. Nam massa ex, hendrerit id auctor non, faucibus ut purus. Etiam eget dictum magna. Nam nunc magna, congue at tincidunt vel, consectetur fermentum dui. Etiam risus ex, luctus ac lorem at, ornare tristique purus. Ut porttitor, mi eget elementum gravida, nulla eros faucibus dolor, a tempus ante lectus in orci.'),
                ],
              ),
            ),
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ),

        Positioned(
          bottom: 50,
          left: 150,
          height: 100,
          width: 100,
          child: Container(
            color: Colors.yellowAccent,
            child: const Icon(Icons.add_a_photo_outlined),
          )
        ),
      ]
    );*/
    //#endregion

    //#region 16 ListView
    /*return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
        ],
      ),
      body: /*SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              for(var i in lista)
              Container(
                alignment: Alignment.center,
                color:Colors.grey,
                width: double.infinity,
                height: 100,
                margin: EdgeInsets.only(bottom: 8),
                child: Text('$i'),
              ),
            ],
          ),
        ),
      ),*/
      //Tutto cio sopra si può realizzare così:
      SingleChildScrollView(
        child: Column(
          children: [
            SizedBox( //Story
              height: 96,
              child: ListView(
                padding: const EdgeInsets.all(8),
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: double.infinity,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: const BoxDecoration(
                      color:Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  for(var i in lista)
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: double.infinity,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        color:Colors.grey,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text('$i'),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column( //feed
                children: [
                  for(var i in lista)
                    Container(
                      //color:Colors.grey,
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 800,
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        children: [
                          Padding( //area profilo utente
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.purpleAccent,
                                    child: Padding(
                                      padding: EdgeInsets.all(1.0),
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('images/argo.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Argo$i'),
                              ]
                            ),
                          ),
                          Image.asset('images/argo.png'), //post
                          //commenti vvv
                          Text('$i Cras condimentum nisl at sollicitudin lobortis. Ut semper nibh lectus, quis vestibulum libero elementum eu. Aenean molestie enim in diam feugiat dignissim. Cras ac tincidunt lorem. Phasellus accumsan lacinia mollis. Mauris posuere neque eget quam molestie iaculis. Etiam aliquam elementum magna, vel finibus enim fringilla quis. Proin ac massa quis velit laoreet egestas. Nulla lacinia aliquet risus, id viverra odio facilisis ac. Donec ipsum erat, pretium eu odio elementum, vehicula congue tellus. Sed imperdiet tellus nec odio aliquet, id convallis augue commodo. Vivamus malesuada feugiat vulputate. Vivamus facilisis, sapien quis laoreet lobortis, velit erat cursus enim, et ornare augue neque non leo. Donec eu lectus vel sem posuere semper. In massa nibh, sodales at lacinia sed, cursus et dolor. Aliquam laoreet felis vel justo varius, in finibus tortor pellentesque.'),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );*/
    //#endregion

    //#region 17 GridView
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
        ],
      ),

      body:
      /*GridView.count(
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 3,
        children: [
          for(var i in lista)
            Container(
              color: Colors.grey,
              alignment: Alignment.center,
              child: Text('$i'),
            ),
        ],
      ),*/

      GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.grey,
            alignment: Alignment.center,
            child: Text('$index'),
          );
        }
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
    //#endregion






    //#region
    /*return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
        ],
      ),

      body: null,

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );*/
    //#endregion

  }
}
