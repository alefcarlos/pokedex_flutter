import 'package:flame/flame.dart';
import 'package:flame/position.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/pokemon_position.dart';
import 'package:flame/animation.dart' as animation;

class PokemonAnimation extends StatelessWidget {
  final int number;
  PokemonAnimation({Key key, @required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flame.util.animationAsWidget(
      Position(100, 100),
      animation.Animation.sequenced('1-generation.png', 2,
          textureX: PokemonPostision.fromNumber(number).imageX,
          textureY: PokemonPostision.fromNumber(number).imageY,
          textureHeight: PokemonPostision.height,
          textureWidth: PokemonPostision.width,
          stepTime: 0.2),
    );
  }
}
