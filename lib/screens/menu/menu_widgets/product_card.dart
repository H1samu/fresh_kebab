import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/additives/additives_main.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/additives/additives_for_dishes.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/additives/additives_for_shawarma.dart';
import 'package:fresh_kebab/screens/menu/model/product_model.dart';

// Используется под Пиццу, Бургеры, Дёнер, Салаты, Выпечка, Десерты.
class ProductCard extends StatelessWidget {
  final ProductModel model;
  const ProductCard({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          model.imagePath,
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 30),
        Text(model.textTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            )),
        const SizedBox(height: 15),
        if (model.textDescription != null)
          SizedBox(
            width: 150,
            child: Text(model.textDescription!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
                textWidthBasis: TextWidthBasis.parent),
          ),
        if (model.textWeight != null)
          Text(
            model.textWeight!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              height: 1.5,
            ),
          ),
        const Spacer(),
        Text(
          model.textPrice,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffcc3333), width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                'В корзину',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffcc3333), fontSize: 13),
              ),
            ),
          ),
        )
      ],
    );
  }
}

// Используется под Шаурму (Нужно реализовать кнопку 'Выбрать добавки'). Особенности: Кнопка 'Выбрать добавки' вместо 'В корзину'
class ProductCardShawarma extends StatelessWidget {
  final ProductModel model;
  const ProductCardShawarma({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 480,
      child: Column(
        children: [
          Image.asset(
            model.imagePath,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Text(model.textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (model.textDescription != null)
            Text(
              model.textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          if (model.textWeight != null)
            Text(
              model.textWeight!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          const Spacer(),
          Text(
            model.textPrice,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return choiceAddList();
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffcc3333), width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 11),
                child: Text(
                  'Выбрать добавки',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffcc3333), fontSize: 13),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Additives choiceAddList() {
    if ((model.textTitle != 'Ай-фреш')) {
      if (model.textTitle.contains('Вегетарианская')) {
        return Additives(additivesList: addListVegan);
      } else if (model.textTitle.contains('BBQ')) {
        return Additives(additivesList: addListBeef);
      } else {
        return Additives(additivesList: addListChicken);
      }
    } else {
      return Additives(additivesList: addListShort);
    }
  }
}

// Используется под Горячие блюда. Особенности: Добавлениы радиобаттоны
class ProductCardKebab extends StatefulWidget {
  final ProductModel model;
  const ProductCardKebab({
    super.key,
    required this.model,
  });

  @override
  State<ProductCardKebab> createState() => _ProductCardKebabState();
}

class _ProductCardKebabState extends State<ProductCardKebab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 480,
      child: Column(
        children: [
          Image.asset(
            widget.model.imagePath,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Text(widget.model.textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (widget.model.textDescription != null)
            Text(
              widget.model.textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          const Spacer(),
          Text(
            widget.model.textPrice,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            ),
          ),
          const SizedBox(height: 8),
          const RadioForDishes(
            radioName1: 'Без лаваша',
            radioName2: 'Обычный лаваш (+20 ₽)',
            radioName3: 'Сырный лаваш (+40 ₽)',
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffcc3333), width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'В корзину',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xffcc3333), fontSize: 13),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
