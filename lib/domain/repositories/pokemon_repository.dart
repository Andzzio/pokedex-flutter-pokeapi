import 'package:pokedex_clean_app/domain/entities/poke.dart';

abstract class PokemonRepository {
  Future<List<Poke>> getPokeList();
  Future<int> getCount();
}
