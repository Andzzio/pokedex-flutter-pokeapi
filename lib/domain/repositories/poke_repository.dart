import 'package:pokedex_clean_app/domain/entities/poke.dart';

abstract class PokeRepository {
  Future<List<Poke>> getPokeList();
  Future<int> getCount();
}
