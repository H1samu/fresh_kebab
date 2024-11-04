import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/additives/additives_for_dishes.dart';

class ProductRadioButton extends StatelessWidget {
  const ProductRadioButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const int cheese = 40;
    const int common = 20;
    return const RadioForDishes(
      radioName1: 'Без лаваша',
      radioName2: 'Обычный лаваш (+$cheese ₽)',
      radioName3: 'Сырный лаваш (+$common ₽)',
    );
  }
}
