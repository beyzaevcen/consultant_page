import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingStarMaker extends StatelessWidget {
  const RatingStarMaker({super.key, required this.rate});
  final double rate;

  @override
  Widget build(BuildContext context) {
    final star = 5 - rate;
    final half = star - star.floor();

    return Stack(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < 5; i++)
              const Icon(
                FontAwesomeIcons.star,
              ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < rate.floor(); i++)
              const Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.amber,
              ),
            for (var i = 0; i < half.round(); i++)
              const Icon(
                FontAwesomeIcons.solidStarHalf,
                color: Colors.amber,
              ),
          ],
        ),
      ],
    );
  }
}
