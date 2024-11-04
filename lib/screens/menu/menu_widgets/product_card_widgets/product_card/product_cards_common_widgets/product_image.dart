import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class ProductImage extends StatelessWidget {
  final ProductModel model;
  const ProductImage({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      model.imagePath,
      height: 150,
      width: 150,
      fit: BoxFit.cover,
    );
  }
}
