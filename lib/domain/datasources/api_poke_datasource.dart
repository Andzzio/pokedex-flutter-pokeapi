import 'package:pokedex_clean_app/domain/entities/poke.dart';

abstract class ApiPokeDatasource {
  Future<List<Poke>> getPokeList();
}
