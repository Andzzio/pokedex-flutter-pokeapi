import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';
import 'package:pokedex_clean_app/presentation/providers/poke_view_provider.dart';
import 'package:pokedex_clean_app/presentation/widgets/poke_bubble.dart';
import 'package:provider/provider.dart';

class PokeView extends StatelessWidget {
  const PokeView({super.key});

  @override
  Widget build(BuildContext context) {
    PokeViewProvider pokeViewProvider = context.watch<PokeViewProvider>();
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: pokeViewProvider.count,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 90,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (context, index) {
          final Poke currentPokemon = pokeViewProvider.pokes[index];
          return Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(61, 77, 142, 226),
              borderRadius: BorderRadius.circular(10),
            ),
            child: PokeBubble(currentPokemon: currentPokemon),
          );
        },
      ),
    );
  }
}
