import 'package:pokedex_flutter/pokemon_position.dart';
import "package:test/test.dart";

void main() {
  test("PokemonPostision.fromNumber(1)", () {
    var position = PokemonPostision.fromNumber(1);

    expect(position.imageX, 0.0);
    expect(position.imageY, 0.0);
  });

  test("PokemonPostision.fromNumber(2)", () {
    var position = PokemonPostision.fromNumber(2);

    expect(position.imageX, 138.0);
    expect(position.imageY, 0.0);
  });

  test("PokemonPostision.fromNumber(3)", () {
    var position = PokemonPostision.fromNumber(3);

    expect(position.imageX, 276.0);
    expect(position.imageY, 0.0);
  });

  test("PokemonPostision.fromNumber(5)", () {
    var position = PokemonPostision.fromNumber(5);

    expect(position.imageX, 552.0);
    expect(position.imageY, 0.0);
  });

  test("PokemonPostision.fromNumber(6)", () {
    var position = PokemonPostision.fromNumber(6);

    expect(position.imageX, 0.0);
    expect(position.imageY, 69.0);
  });

  test("PokemonPostision.fromNumber(7)", () {
    var position = PokemonPostision.fromNumber(7);

    expect(position.imageX, 138.0);
    expect(position.imageY, 69.0);
  });

  test("PokemonPostision.fromNumber(30)", () {
    var position = PokemonPostision.fromNumber(30);

    expect(position.imageX, 0.0);
    expect(position.imageY, 345.0);
  });

  test("PokemonPostision.fromNumber(151)", () {
    var position = PokemonPostision.fromNumber(151);

    expect(position.imageX, 0.0);
    expect(position.imageY, 2070.0);
  });
}
