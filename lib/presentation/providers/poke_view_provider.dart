import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';
import 'package:pokedex_clean_app/domain/repositories/poke_repository.dart';

class PokeViewProvider extends ChangeNotifier {
  final PokeRepository repository;
  List<Poke> pokes = [];
  int count = 0;
  PokeViewProvider({required this.repository});

  Future<void> loadPokes() async {
    final List<Poke> newPokes = await repository.getPokeList();
    pokes.addAll(newPokes);
    count = await repository.getCount();
    notifyListeners();
  }
}
