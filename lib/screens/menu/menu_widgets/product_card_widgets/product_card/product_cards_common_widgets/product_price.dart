import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({
    super.key,
    required this.model,
  });

  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${model.price.toString()} ₽',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }
}
