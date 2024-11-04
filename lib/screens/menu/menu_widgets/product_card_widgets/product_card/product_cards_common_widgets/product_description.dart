import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class ProductDescription extends StatelessWidget {
  final ProductModel model;
  const ProductDescription({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      model.description!,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w200,
        height: 1.5,
      ),
    );
  }
}
