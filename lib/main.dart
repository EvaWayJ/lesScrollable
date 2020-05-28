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
  List<Activite> activites = [
    new Activite("Vélo", Icons.directions_bike),
    new Activite("peinture", Icons.palette),
    new Activite("golf", Icons.golf_course),
    new Activite("arcade", Icons.gamepad),
    new Activite("bricolage", Icons.build),new Activite("Vélo", Icons.directions_bike),
    new Activite("peinture", Icons.palette),
    new Activite("golf", Icons.golf_course),
    new Activite("arcade", Icons.gamepad),
    new Activite("bricolage", Icons.build),new Activite("Vélo", Icons.directions_bike),
    new Activite("peinture", Icons.palette),
    new Activite("golf", Icons.golf_course),
    new Activite("arcade", Icons.gamepad),
    new Activite("bricolage", Icons.build)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),
        body: Center(
            child: new ListView.builder(
              itemCount: activites.length,
              itemBuilder: (context, i){
                return new ListTile(
                  title:  new Text('Activité : ${activites[i].nom}'),
                  trailing: new Icon(activites[i].icone),
                  leading: new Icon(activites[i].icone),
                );
              },
            )// This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}

class Activite {
  String nom;
  IconData icone;

  Activite(this.nom, this.icone);

}