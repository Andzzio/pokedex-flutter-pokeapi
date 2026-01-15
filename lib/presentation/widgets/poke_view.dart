import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';
import 'package:pokedex_clean_app/presentation/providers/poke_view_provider.dart';
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
            child: Stack(
              children: [
                Image(
                  image: NetworkImage(currentPokemon.icon),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return CircularProgressIndicator(color: Colors.white);
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Center(
                      child: Image.network(
                        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/items/poke-ball.png",
                      ),
                    );
                  },
                ),
                Positioned(
                  left: 5,
                  top: 5,
                  child: Text(
                    "${currentPokemon.id}",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
