import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';

class PokeViewProvider extends ChangeNotifier {
  List<Poke> pokes = [];
}
