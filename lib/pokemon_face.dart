import 'package:flame/position.dart';
import 'package:flame/sprite.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/pokemon_position.dart';

class PokemonFace extends StatelessWidget {
  final int number;

  PokemonFace({this.number});

  @override
  Widget build(BuildContext context) {
    var poke = PokemonPostision.fromNumber(number);
    var futureSprite = Sprite.loadSprite(
      '1-generation.png',
      x: poke.imageX,
      y: poke.imageY,
      width: PokemonPostision.width,
      height: PokemonPostision.height,
    );
    return FutureBuilder(
      future: futureSprite,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return CustomPaint(
          painter: _PokemonFacePainter(snapshot.data as Sprite),
        );
      },
    );
  }
}

class _PokemonFacePainter extends CustomPainter {
  final Sprite sprite;
  _PokemonFacePainter(this.sprite);

  @override
  void paint(Canvas canvas, Size size) {
    var pos = Position(0.0, 0.0);
    sprite.renderCentered(canvas, pos);
  }

  @override
  bool shouldRepaint(_PokemonFacePainter oldDelegate) => false;
}
