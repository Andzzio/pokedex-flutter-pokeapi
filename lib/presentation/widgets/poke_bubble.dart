import 'package:flutter/material.dart';
import 'package:pokedex_clean_app/domain/entities/poke.dart';

class PokeBubble extends StatelessWidget {
  const PokeBubble({super.key, required this.currentPokemon});

  final Poke currentPokemon;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
