import 'package:flutter/material.dart';
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
          return Placeholder();
        },
      ),
    );
  }
}
