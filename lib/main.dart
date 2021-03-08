import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}

class Counter extends StatefulWidget {
  @override
  _counterState createState() => _counterState();
}

class _counterState extends State<Counter> {
  int count = 0;
  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Jester'),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(
              count.toString(),
            ),
          ),
          FlatButton(
            onPressed: _decrementCounter,
            child: Icon(Icons.remove),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add one',
        child: Icon(Icons.add),
      ),
    );
  }
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  void _incrementCounter() {
//    setState(() {
//      _counter++;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//
//    return Scaffold(
//      appBar: AppBar(
//
//        title: Text(widget.title),
//      ),
//      body: Center(
//
//        child: Column(
//
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
//    );
//  }
//}
