import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card.dart';
import 'package:fresh_kebab/screens/menu/repository/menu_position_lists.dart';

final List<Widget> pizzaCards =
    pizzaList.map((model) => ProductCard(model: model)).toList();

final List<Widget> friesCards =
    friesList.map((model) => ProductCard(model: model)).toList();

final List<Widget> drinksCards =
    drinksList.map((model) => ProductCard(model: model)).toList();

final List<Widget> cocktailsCards =
    cocktailsList.map((model) => ProductCard(model: model)).toList();

final List<Widget> shawarmaCards =
    shawarmaList.map((model) => ProductCardShawarma(model: model)).toList();

final List<Widget> burgersCards =
    burgersList.map((model) => ProductCard(model: model)).toList();

final List<Widget> donersCards =
    donersList.map((model) => ProductCard(model: model)).toList();

final List<Widget> saladsCards =
    saladsList.map((model) => ProductCard(model: model)).toList();

final List<Widget> bakeryCards =
    bakeryList.map((model) => ProductCard(model: model)).toList();

final List<Widget> dessertsCards =
    dessertsList.map((model) => ProductCard(model: model)).toList();

final List<Widget> dishesCards = dishesList
    .map(
      (model) => model.textTitle == 'Плов с\nговядиной'
          ? ProductCard(model: model)
          : ProductCardKebab(model: model),
    )
    .toList();
