import 'widgets/CardTesto.dart';
import 'widgets/CardVideo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // runApp(MyApp2());
  runApp(MyApp3());
}


//#region fino a 21 Slivers
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
    );*/
    //#endregion

    //#region 18 ListTile_&_GridTile
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

      body:
      /*ListView(
        padding: EdgeInsets.all(8),
        children: [
          for (var i in lista)
            Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 8),
              color: Colors.grey,
              child: Row(
                children: [
                  Image.network('https://i.pravatar.cc/150?img=2'),
                  Column(
                    children: [
                      Text('Luca Rossi'),
                      Text('Ciao sono nuovo su questa applicazione'),
                    ],
                  ),
                ],
              ),
            )
        ],
      ),*/

      /*ListView( //rubrica
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        children: [
          for (var i in lista)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: ListTile(
                tileColor: Colors.grey,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=2'),
                  radius: 30,
                ),
                title: Text('Luca Rossi'),
                subtitle: Text(
                  'Ciao sono nuovo su questa applicazione',
                  maxLines: 2,
                ),
                trailing: IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.delete),
                ),
                isThreeLine: true,
              ),
            ),
        ],
      ),*/

      GridView.count( //post x
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 0.6,
        crossAxisCount: 2,
        children: [
          for(var i in lista)
            GridTile(
              header: GridTileBar(
                backgroundColor: Colors.indigoAccent,
                leading: Icon(Icons.add),
                title: Text('Post $i'),
                subtitle: Text('Sottotitolo bla bla bla'),
                trailing: Icon(Icons.delete),
              ),
              footer: GridTileBar(
                backgroundColor: Colors.indigoAccent,
                leading: Icon(Icons.thumb_up_outlined),
                subtitle: Text('22/01/2024'),
                trailing: Icon(Icons.add_comment_outlined),
              ),
              child: Image.network(
                'https://i.pravatar.cc/150?img=2',
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );*/
    //#endregion

    //#region 19 Card
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

      body: SizedBox(
        height: 470,
        child: Card(
          margin: const EdgeInsets.all(10),
          //color: Colors.orange,
          color: Colors.white,
          surfaceTintColor: Colors.transparent, //per togliere quel filtro violetto
          //shadowColor: Colors.purpleAccent,
          elevation: 20,
          //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Image.asset(
                "images/argo.png",
              ),
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=2")
                ),
                title: Text('Luca Rossi'),
                subtitle: Text('ciao sono nuovo'),
                trailing: Icon(Icons.favorite),
              )
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );*/
    //#endregion

    //#region 20 Opacity_Transform_&_DecoratedBox
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

      body:
      /*Opacity(
        opacity: 0.6,
        child: Container(
          height: 300,
          color: Colors.red,
        ),
      ),*/
      /*Transform.rotate(
        angle: 45,
        child: Container(
          height: 300,
          color: Colors.red,
        ),
      ),*/
      /*Transform.scale(
        scaleY: 1.5,
        child: Container(
          height: 300,
          color: Colors.red,
        ),
      ),*/
      /*Transform.translate(
        offset: Offset(10, 10),
        child: Container(
          height: 300,
          color: Colors.red,
        ),
      ),*/
      /*ClipOval(
        child: Container(
          height: 300,
          color: Colors.red,
        ),
      ),*/
      /*ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight:  Radius.circular(20)),
        child: Container(
          height: 300,
          color: Colors.red,
        ),
      ),*/
      DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.cyan,
          //image: DecorationImage(image: AssetImage('images/argo.png')),
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Colors.greenAccent,
            Colors.cyan
          ]),
          backgroundBlendMode: BlendMode.difference
        ),
        child: Container(
          height: 300,
        )
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );*/
    //#endregion

    //#region 21 Slivers
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
          IconButton(onPressed: () => {}, icon: const Icon(Icons.access_time)),
        ],
      ),*/

      body: CustomScrollView(
        slivers: [
          const SliverAppBar( // da guardare SliverPersistentHeader
            floating: true,
            //pinned: true,
            snap: true,
            //stretch: true, // da abbinare a strechMode su FlexibleSpaceBar
            expandedHeight: 100,
            backgroundColor: Colors.cyan,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
            ),
          ),
          const SliverToBoxAdapter(
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque pulvinar viverra nisl, et venenatis odio tincidunt id. Morbi volutpat fermentum tellus, eget ornare nibh gravida vitae. Morbi consequat gravida turpis non fermentum. Quisque euismod lorem quis est faucibus, in tincidunt velit tempus. Nulla efficitur risus eget libero consectetur fermentum. Duis ac nulla nibh. Phasellus in felis non velit eleifend sollicitudin. Suspendisse ac lobortis nibh, quis efficitur mauris. Proin mollis consequat hendrerit. Quisque maximus porttitor lacus, a varius purus aliquet quis. Curabitur tristique auctor nunc, nec accumsan massa cursus ut. Nullam euismod lectus lacus. Nu'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 50,
              (context, index) {
                return ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=2'),
                  ),
                  title: Text('ciaoi $index'),
                  subtitle: const Text('data test subtitle test data'),
                  trailing: const Icon(Icons.favorite),
                );
              }
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 30,
              (context, index) {
                return GridTile(
                  header: GridTileBar(
                    backgroundColor: Colors.blueGrey,
                    title: Text('test grid $index'),
                    trailing: const Icon(Icons.connecting_airports_sharp),
                  ),
                  
                  child: const Image(image: AssetImage('images/argo.png'))
                );
              }
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
    //#endregion
  }
}
//#endregion

//#region 22-23 Stateless_&_Statefull_Widget-Esercizio_Statefull_Widget
class MyApp2 extends StatefulWidget {
  MyApp2({super.key});

  @override
  State<MyApp2> createState() => _MyApp2State();
}
//card con img
//double tap
//icona cuore da bordo bianco a cuore pieno rosso
class _MyApp2State extends State<MyApp2> {
  //int _counter = 0;
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo App'),
        ),
        //#region 22 Stateless_&_Statefull_Widget
        /*body: Center(
          child: Text('$_counter', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _counter++;
            });
            print(_counter);
          },
          child: const Icon(Icons.add),
        ),*/
        //#endregion

        //#region 23 Esercizio_Statefull_Widget
        body: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,

            child: SizedBox(
              height: 400,
              // child: GestureDetector(
              child: GestureDetector(
                onDoubleTap: () {
                  setState(() {
                    liked = !liked;
                  });
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 20,
                  surfaceTintColor: Colors.transparent,
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      Image(
                        image: AssetImage('images/argo.png'),
                        fit: BoxFit.fitHeight,
                      ),
                      Positioned(
                        child: Icon(
                          liked? Icons.favorite : Icons.favorite_border,
                          color: liked? Colors.red : Colors.grey,
                          size: 40,
                        ),
                        top: 10,
                        right: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
        )
        //#endregion
      ),
    );
  }
}
//#endregion


class MyApp3 extends StatefulWidget {
  const MyApp3({super.key});

  @override
  State<MyApp3> createState() => _MyApp3State();
}

class _MyApp3State extends State<MyApp3> {
  final lista = [3, 6, 54, 2, 3, 5, 8, 95, 2, 1];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo App'),
        ),
        body:
        //#region 24 Dividere_App_in_Widget
        ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 10,
          itemBuilder: (context, index) {
            if(lista[index] % 2 == 0)
              return CardVideo(value : lista[index]);
            else
              return CardTesto(value: lista[index]);
          }
        ),
        //#endregion
      ),
    );
  }
}






