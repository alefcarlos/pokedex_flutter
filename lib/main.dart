import 'package:flutter/material.dart';
import 'package:flame/animation.dart' as animation;
import 'package:flame/flame.dart';
import 'package:flame/position.dart';
import 'package:pokedex_flutter/pokemon_position.dart';

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

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Pokédex Fire Red/Leaf Green'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Pokemon(number: index + 1);
        },
        itemCount: 151,
      ),
    );
  }
}

class Pokemon extends StatelessWidget {
  final int number;
  Pokemon({Key key, @required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flame.util.animationAsWidget(
      Position(74.0, 74.0),
      animation.Animation.sequenced('1-generation.png', 2,
          textureX: PokemonPostision.fromNumber(number).imageX,
          textureY: PokemonPostision.fromNumber(number).imageY,
          textureHeight: PokemonPostision.height,
          textureWidth: PokemonPostision.width,
          stepTime: 0.2),
    );
  }
}
