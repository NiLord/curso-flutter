import 'package:flutter/material.dart';

class VideoBrackground extends StatelessWidget {
  final List<Color> colors;
  final List<double> stops;

  const VideoBrackground({
    super.key,
    this.colors = const[
      Colors.transparent,
      Colors.black87
    ],
    this.stops = const [0.0, 1.0]
    }):assert(colors.length == stops.length, 'Colors and stops must have the same length');

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: DecoratedBox(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: stops,
                colors: colors,
              )
          )
      ),
    );
  }
}
