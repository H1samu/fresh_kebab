import 'package:flutter/material.dart';

class GridViewForCards extends StatelessWidget {
  final List<Widget> card;
  final double myHeight;
  final double minCardWidth;
  const GridViewForCards({
    super.key,
    required this.card,
    required this.myHeight,
    this.minCardWidth = 160,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount =
        (screenWidth / minCardWidth).floor().clamp(1, card.length);
    return GridView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: myHeight,
      ),
      children: card,
    );
  }
}
