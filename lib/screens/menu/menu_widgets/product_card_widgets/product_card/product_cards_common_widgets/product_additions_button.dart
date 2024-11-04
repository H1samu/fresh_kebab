import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/additives/additives_for_shawarma.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/product_card_widgets/additives/additives_main.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class AdditionsButton extends StatelessWidget {
  final ProductModel model;

  const AdditionsButton({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return _choiceAddList();
          },
        );
      },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 11),
          child: Text(
            'Выбрать добавки',
            textAlign: TextAlign.center,
            style: TextStyle(color: FreshKebabColors.fkRed, fontSize: 13),
          ),
        ),
      ),
    );
  }

  Widget _choiceAddList() {
    if ((model.title != 'Ай-фреш')) {
      if (model.title.contains('Вегетарианская')) {
        return Additives(
          additivesList: addListVegan,
          productProvider: model,
        );
      } else if (model.title.contains('BBQ')) {
        return Additives(
          additivesList: addListBeef,
          productProvider: model,
        );
      } else {
        return Additives(
          additivesList: addListChicken,
          productProvider: model,
        );
      }
    } else {
      return Additives(
        additivesList: addListShort,
        productProvider: model,
      );
    }
  }
}
