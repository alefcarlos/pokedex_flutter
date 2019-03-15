class PokemonPostision {
  static const double fileWidth = 690.0;
  static const double maxPokePerLine = 5;
  static const double height = 69.0;
  static const double width = 69.0;
  static const double maxFrame = 2;
  static const double maxFrameWidth = 138.0;

  double _imageX;
  double _imageY;
  double get imageX => _imageX;
  double get imageY => _imageY;

  PokemonPostision(this._imageX, this._imageY);

  PokemonPostision.fromNumber(int number) {
    //Cálculo do Y
    var yResult = number / maxPokePerLine;
    var row = yResult.ceil();

    //Cálculo do quadrante do X
    var xResult = number % maxPokePerLine;

    //Significa que é o último quadrante, pois o resto da divisão foi 0.
    if(xResult == 0) xResult = maxPokePerLine;

    _imageY = row == 0 ? 0 : (row - 1) * height; //Row 0 based
    _imageX = xResult == 0 ? 0 : (xResult - 1) * maxFrameWidth;
  }

  @override
  String toString() {
    return 'X($_imageX), Y($_imageY)';
  }
}
