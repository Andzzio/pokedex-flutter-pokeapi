import 'package:flutter/material.dart';

enum Shapes { circ, rect }

class PokeButton extends StatelessWidget {
  final String tag;
  final double margin;
  final double width;
  final double height;
  final Color color;
  final double radius;
  final Shapes shape;

  const PokeButton({
    super.key,
    this.tag = "",
    this.shape = Shapes.rect,
    this.margin = 0,
    this.width = 0,
    this.height = 0,
    required this.color,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: (shape == Shapes.rect && radius > 0)
            ? BorderRadius.circular(radius)
            : null,
        shape: (shape == Shapes.rect) ? BoxShape.rectangle : BoxShape.circle,
      ),
    );
  }
}
