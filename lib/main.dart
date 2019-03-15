import 'package:flutter/material.dart';
import 'package:pokedex_flutter/pokemon_anim.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.red,
          accentColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int poke;

  void initState() {
    super.initState();
    poke = 1;
  }

  void plusPoke() {
    setState(() {
      poke++;
    });
  }

  void minusPoke() {
    setState(() {
      var result = poke - 1;
      if (result <= 0) result = 1;

      poke = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Pokédex Fire Red/Leaf Green'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              RaisedButton(
                child: Icon(
                  Icons.navigate_before,
                  size: 20.0,
                ),
                onPressed: minusPoke,
              ),
              RaisedButton(
                child: Icon(
                  Icons.navigate_next,
                  size: 20.0,
                ),
                onPressed: plusPoke,
              ),
            ],
          ),
          PokemonAnimation(number: poke),
          Text('#$poke')
        ],
      ),
    );
  }
}
