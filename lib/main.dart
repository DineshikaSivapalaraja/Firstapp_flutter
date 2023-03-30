import 'package:firstapp_flutter/pages/BottomNavigationPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  // ignore: avoid_print
  //void _printMethod() => print("Text");
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
     // home:const Text("Home")
     /*home: const Scaffold(
       floatingActionButton: FloatingActionButton(
        tooltip: 'Increment',
        onPressed: _printMethod,
        child: const Icon(Icons.add)),  // it will accessable in stateful widget
     ) */
      home: const MyHomePage(title: 'Dins Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

 class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
   //int _counter = 21;

  void _incrementCounter() {
    //_counter++;
    setState(() {
      _counter++;
    });   //what will be happen when we put counter outside
   // print(_counter);
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Dineshi, You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder:(context) => BottomNavigationPage()));
            }, child: const Text("Navigate to Next")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        //child: const Icon(Icons.home),
        //Icons can changeable
        child: const Icon(Icons.add),

      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
