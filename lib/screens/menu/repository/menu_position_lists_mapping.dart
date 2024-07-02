import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/product_provider.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/product_card.dart';

final List<Widget> pizzaCards = ProductProvider()
    .pizzaList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> friesCards = ProductProvider()
    .friesList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> drinksCards = ProductProvider()
    .drinksList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> cocktailsCards = ProductProvider()
    .cocktailsList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> shawarmaCards = ProductProvider()
    .shawarmaList
    .map((model) => ProductCardShawarma(model: model))
    .toList();

final List<Widget> burgersCards = ProductProvider()
    .burgersList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> donersCards = ProductProvider()
    .donersList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> saladsCards = ProductProvider()
    .saladsList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> bakeryCards = ProductProvider()
    .bakeryList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> dessertsCards = ProductProvider()
    .dessertsList
    .map((model) => ProductCard(model: model))
    .toList();

final List<Widget> dishesCards = ProductProvider()
    .dishesList
    .map(
      (model) => model.title == 'Плов с\nговядиной'
          ? ProductCard(model: model)
          : ProductCardKebab(model: model),
    )
    .toList();
