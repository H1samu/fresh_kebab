import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/cart_provider.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card.dart';
import 'package:provider/provider.dart';

class AddToCartButton extends StatefulWidget {
  const AddToCartButton({
    super.key,
    required this.widget,
  });

  final ProductCard widget;

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
}

class _AddToCartButtonState extends State<AddToCartButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<Color?> _textColorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _colorAnimation =
        ColorTween(begin: Colors.white, end: FreshKebabColors.fkRed)
            .animate(_controller);

    _textColorAnimation = ColorTween(
      begin: FreshKebabColors.fkRed,
      end: Colors.white,
    ).animate(_controller);

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        _controller.forward();
      },
      onLongPressEnd: (details) {
        context.read<CartProvider>().addToCart(widget.widget.model);
        _controller.reverse();
      },
      onTap: () {
        context.read<CartProvider>().addToCart(widget.widget.model);
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: _colorAnimation.value,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 0.5,
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(color: FreshKebabColors.fkRed, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
          child: Text(
            'В корзину',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _textColorAnimation.value,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}
