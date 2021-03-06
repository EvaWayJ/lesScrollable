import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      Orientation o = MediaQuery.of(context).orientation;
      print(o);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
       child: (o == Orientation.portrait)? list(): grill(),
        ));
  }

  Widget grill(){
    return new GridView.builder(
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
      ),
      itemCount: activites.length,
      itemBuilder: (context, i){
        return new Container(
            margin: EdgeInsets.all(7.5),
            child: new Card(
              elevation: 10.0,
              child: new InkWell(
                onTap: (()=> print("grill")),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Text("Activite"),
                    new Icon(activites[i].icone, color: Colors.teal,size: 45.0,),
                    new Text(activites[i].nom,style: new TextStyle(color: Colors.teal, fontSize: 20.0, fontStyle: FontStyle.italic),)
                  ],
                ),
              )
            )
        );
      },
    );
  }

  Widget list (){
    return new ListView.builder(
      itemCount: activites.length,
      itemBuilder: (context, i){
        Activite activit = activites[i];
        String key = activit.nom;
        return new Dismissible(
          key: new Key(key),
          child: new Container(
            padding: EdgeInsets.all(5.0),
            height: 135.0,
            child: new Card(
              elevation: 7.5,
              child : new InkWell(
                onTap: (() => print("tap")),
                onLongPress: (()=>print("C'est loooooooong")),
                child: new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Icon(activit.icone,color: Colors.teal,size: 75.5,),
                      new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("Activité :",style: new TextStyle(color: Colors.teal,fontSize: 20.0),),
                          new Text(activit.nom, style: new TextStyle(color: Colors.teal[700],fontSize: 30.0),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          background: new Container(
            color: Colors.red,
            padding: EdgeInsets.only(right: 20.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text("Supprimer", style: new TextStyle(color: Colors.white),),
                new Icon(Icons.delete,color: Colors.white)
              ],
            ),
          ),
          onDismissed: (direction){
            setState(() {
              print(activit.nom);
              activites.removeAt(i);
            });
          },
        );
      },
    );
  }
}

class Activite {
  String nom;
  IconData icone;

  Activite(this.nom, this.icone);

}