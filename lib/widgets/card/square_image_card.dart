import 'package:flutter/material.dart';

final class SquareImageCard extends StatelessWidget {
  final double size;
  final String source;

  const SquareImageCard({
    super.key,
    required this.size,
    required this.source,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        source,
        fit: BoxFit.fill,
        height: size,
        width: size,
      ),
    );
  }
}
