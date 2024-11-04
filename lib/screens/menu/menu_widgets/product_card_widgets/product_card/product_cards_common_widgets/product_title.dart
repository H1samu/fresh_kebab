import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class ProductTitle extends StatelessWidget {
  final ProductModel model;
  const ProductTitle({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      model.title,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.visible,
      softWrap: true,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
