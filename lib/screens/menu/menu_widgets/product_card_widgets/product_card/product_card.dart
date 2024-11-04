import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/add_cart_button/add_cart_button.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_cards_common_widgets/product_additions_button.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_cards_common_widgets/product_description.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_cards_common_widgets/product_image.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_cards_common_widgets/product_price.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_cards_common_widgets/product_radiobutton.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_cards_common_widgets/product_title.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class ProductCard extends StatefulWidget {
  final ProductModel model;
  const ProductCard({
    super.key,
    required this.model,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImage(model: widget.model),
        const SizedBox(height: 30),
        ProductTitle(model: widget.model),
        const SizedBox(height: 15),
        if (widget.model.description != null)
          ProductDescription(model: widget.model),
        const Spacer(),
        ProductPrice(model: widget.model),
        const SizedBox(height: 8),
        if (widget.model.imagePath.contains('dishes') &&
            !widget.model.title.contains('Плов'))
          const ProductRadioButton(),
        const SizedBox(height: 8),
        widget.model.imagePath.contains('shawarma')
            ? AdditionsButton(model: widget.model)
            : AddToCartButton(productModel: widget.model)
      ],
    );
  }
}
/* dishes
Column(
      children: [
        ProductImage(model: widget.model),
        const SizedBox(height: 30),
        ProductTitle(model: widget.model),
        const SizedBox(height: 15),
        ProductDescription(model: widget.model),
        const Spacer(),
        ProductPrice(model: widget.model),
        const SizedBox(height: 8),
        const ProductRadioButton(),
        const SizedBox(height: 8),
        AddToCartButton(productModel: widget.model)
      ],
    );

other
Column(
      children: [
        ProductImage(model: widget.model),
        const SizedBox(height: 30),
        ProductTitle(model: widget.model),
        const SizedBox(height: 15),
        if (widget.model.description != null)
          ProductDescription(model: widget.model),
        ProductWeight(model: widget.model),
        const Spacer(),
        ProductPrice(model: widget.model),
        const SizedBox(height: 8),
        AddToCartButton(productModel: widget.model),
        const SizedBox(height: 8),
      ],
    );

    shawarma
    Column(
      children: [
        ProductImage(model: widget.model),
        const SizedBox(height: 30),
        ProductTitle(model: widget.model),
        const SizedBox(height: 15),
        ProductDescription(model: widget.model),
        ProductWeight(model: widget.model),
        const Spacer(),
        ProductPrice(model: widget.model),
        const SizedBox(height: 8),
        AdditionsButton(model: widget.model),
        const SizedBox(height: 8),
      ],
    );
    */