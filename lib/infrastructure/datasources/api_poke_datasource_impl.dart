import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/domain/datasources/poke_datasource.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';
import 'package:pokedex_clean_app/infrastructure/models/poke_model.dart';

class ApiPokeDatasourceImpl implements PokeDatasource {
  final Dio dio;
  ApiPokeDatasourceImpl({required this.dio});
  @override
  Future<List<Poke>> getPokeList() async {
    try {
      Response response = await dio.get(
        "https://pokeapi.co/api/v2/pokemon?limit=1400&offset=0",
      );
      final List<dynamic> rawList = response.data["results"];
      final List<Poke> pokes = rawList
          .map((x) => Result.fromJson(x).toPokeEntity())
          .toList();
      return pokes;
    } catch (e) {
      debugPrint("$e");
      return [];
    }
  }

  @override
  Future<int> getCount() async {
    try {
      Response response = await dio.get(
        "https://pokeapi.co/api/v2/pokemon?limit=5&offset=0",
      );
      int count = PokeModel.fromJson(response.data).count;
      return count;
    } catch (e) {
      debugPrint("$e");
      return 0;
    }
  }
}
