import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/product_provider.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card/product_card.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

final productProvider = ProductProvider();

List<Widget> createProductCards(List<ProductModel> productList) {
  return productList.map((model) => ProductCard(model: model)).toList();
}

final Map<String, List<Widget>> productCards = {
  'pizza': createProductCards(productProvider.pizzaList),
  'fries': createProductCards(productProvider.friesList),
  'drinks': createProductCards(productProvider.drinksList),
  'cocktails': createProductCards(productProvider.cocktailsList),
  'shawarma': createProductCards(productProvider.shawarmaList),
  'burgers': createProductCards(productProvider.burgersList),
  'doners': createProductCards(productProvider.donersList),
  'salads': createProductCards(productProvider.saladsList),
  'bakery': createProductCards(productProvider.bakeryList),
  'desserts': createProductCards(productProvider.dessertsList),
  'dishes': createProductCards(productProvider.dishesList),
};
