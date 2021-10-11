import 'package:flutter/material.dart';

class PokeColors {
   final Color beige = Color(0xFFA8A878);
   final Color black = Color(0xFF303943);
   final Color blue = Color(0xFF429BED);
   final Color brown = Color(0xFFB1736C);
   final Color darkBrown = Color(0xD0795548);
   final Color grey = Color(0x64303943);
   final Color indigo = Color(0xFF6C79DB);
   final Color lightBlue = Color(0xFF7AC7FF);
   final Color lightBrown = Color(0xFFCA8179);
   final Color whiteGrey = Color(0xFFFDFDFD);
   final Color lightCyan = Color(0xFF98D8D8);
   final Color lightGreen = Color(0xFF78C850);
   final Color darkGreen = Color(0xFF145514);
   final Color lighterGrey = Color(0xFFF4F5F4);
   final Color lightGrey = Color(0xFFF5F5F5);
   final Color lightPink = Color(0xFFEE99AC);
   final Color lightPurple = Color(0xFF9F5BBA);
   final Color lightRed = Color(0xFFFB6C6C);
   final Color lightTeal = Color(0xFF48D0B0);
   final Color lightYellow = Color(0xFFFFCE4B);
   final Color lilac = Color(0xFFA890F0);
   final Color pink = Color(0xFFF85888);
   final Color purple = Color(0xFF7C538C);
   final Color red = Color(0xFFFA6555);
   final Color teal = Color(0xFF4FC1A6);
   final Color yellow = Color(0xFFF6C747);
   final Color semiGrey = Color(0xFFbababa);
   final Color violet = Color(0xD07038F8);

  Color getColorbyType(String type) {
    type = type.toLowerCase();
    switch (type) {
      case 'bug':
        return darkGreen;
      case 'dark':
        return black;
      case 'dragon':
        return teal;
      case 'eletric':
        return lightYellow;
      case 'fairy':
        return pink;
      case 'fighting':
        return lightGreen;
      case 'fire':
        return red;
      case 'flying':
        return semiGrey;
      case 'ghost':
        return purple;
      case 'grass':
        return lightGreen;
      case 'ground':
        return lightBrown;
      case 'ice':
        return lightBlue;
      case 'normal':
        return brown;
      case 'poison':
        return violet;
      case 'psychic':
        return pink;
      case 'rock':
        return darkBrown;
      case 'steel':
        return beige;
      case 'water':
        return blue;
      default:
        return beige;
    }
  }
}
