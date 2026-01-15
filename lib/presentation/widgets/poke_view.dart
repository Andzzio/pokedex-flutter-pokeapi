import 'package:flutter/material.dart';

class PokeView extends StatelessWidget {
  const PokeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: 100,
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
