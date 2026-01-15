import 'package:pokedex_clean_app/domain/datasources/poke_datasource.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';
import 'package:pokedex_clean_app/domain/repositories/poke_repository.dart';

class PokeRepositoryImpl implements PokeRepository {
  final PokeDatasource datasource;

  PokeRepositoryImpl({required this.datasource});

  @override
  Future<int> getCount() {
    return datasource.getCount();
  }

  @override
  Future<List<Poke>> getPokeList() {
    return datasource.getPokeList();
  }
}
