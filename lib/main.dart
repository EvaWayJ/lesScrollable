import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Les scollable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(height: 100, color:Colors.red),
            new Container(height: 100, color:Colors.yellow),
            new Container(height: 100, color:Colors.grey),
            new Container(height: 100, color:Colors.blue),
            new Container(height: 100, color:Colors.red),
            new Container(height: 100, color:Colors.yellow),
            new Container(height: 100, color:Colors.grey),
            new Container(height: 100, color:Colors.blue),
          ],
        ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
