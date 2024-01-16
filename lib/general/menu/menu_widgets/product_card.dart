import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/additives.dart';

// Используется под Пиццу, Бургеры, Дёнер, Салаты, Выпечка, Десерты. Высота контейнера по умолчанию 570 (можно менять), Заполнение картинки fit: BoxFit.cover.
class ProductCard extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String textPrice;
  final String textWeight;
  const ProductCard({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    required this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 30),
        Text(textTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
            )),
        const SizedBox(height: 15),
        if (textDescription != null)
          SizedBox(
            width: 150,
            child: Text(textDescription!,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                ),
                textWidthBasis: TextWidthBasis.parent),
          ),
        Text(
          textWeight,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w200,
            height: 1.5,
          ),
        ),
        const Spacer(),
        Text(
          textPrice,
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

// Используется под Фри-меню. Особенности: Размер картинки 100х100, заполнение дефолтное
class ProductCardSmall extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String textPrice;
  final String? textWeight;
  const ProductCardSmall({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 360,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 100,
            width: 100,
          ),
          const SizedBox(height: 30),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (textDescription != null)
            Text(
              textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          if (textWeight != null)
            Text(
              textWeight!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          const Spacer(),
          Text(
            textPrice,
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
      ),
    );
  }
}

// Используется под Напитки и коктейли. Особенности: Размер картинки 140х140, заполнение дефолтное
class ProductCardLong extends StatelessWidget {
  final double containerHeight;
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String textPrice;
  final String? textWeight;
  const ProductCardLong({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    this.textWeight,
    this.containerHeight = 350,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: containerHeight,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 140,
            width: 140,
          ),
          const SizedBox(height: 30),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (textDescription != null)
            Text(
              textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          if (textWeight != null)
            Text(
              textWeight!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          const Spacer(),
          Text(
            textPrice,
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
      ),
    );
  }
}

// Используется под Шаурму, шашлык (Нужно реализовать кнопку 'Выбрать добавки'). Особенности: Кнопка 'Выбрать добавки' вместо 'В корзину'
class ProductCardShawarma extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String? textDescription2;
  final String textPrice;
  final String textWeight;
  const ProductCardShawarma({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    required this.textWeight,
    this.textDescription2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 480,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (textDescription != null)
            Text(
              textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13.5,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          if (textDescription2 != null)
            Text(
              textDescription2!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13.5,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          Text(
            textWeight,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w200,
              height: 1.5,
            ),
          ),
          const Spacer(),
          Text(
            textPrice,
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
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 13),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Additives(
                        setting: SomeCheckbox(
                          chikenOrbeef:
                              OneCheckbox(additives: 'Больше говядины'),
                        ),
                      ),
                    ),
                  );
                },
                child: const Text(
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
}
