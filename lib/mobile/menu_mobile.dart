import 'package:flutter/material.dart';
import 'package:fresh_kebab/widgets/product_card.dart';

Widget menuMobile() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Пицца",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 540,
                    imagePath: 'assets/images/pizza/meat.png',
                    textTitle: 'Пицца "Мясная"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, конина, пепперони, свежие томаты, оливки, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '500 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 540,
                    imagePath: 'assets/images/pizza/cheese.png',
                    textTitle: 'Пицца "Сырная"',
                    textDescription:
                        'Соус итальянский, фирменный соус, сыр моцарелла, сыр чеддер, сыр брынза, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '480 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 530,
                    imagePath: 'assets/images/pizza/salami.png',
                    textTitle: 'Пицца "Салями"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, колбаски салями, перчик болгарский, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '460 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 530,
                    imagePath: 'assets/images/pizza/pepperoni.png',
                    textTitle: 'Пицца "Пепперони"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, колбаски пепперони, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '450 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/pizza/premier.png',
                    textTitle: 'Пицца "Премьер"',
                    textDescription:
                        'Соус итальянский, фирменный соус, сыр моцарелла, конина, жаренные грибочки, маринованные огурчики, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '480 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/pizza/chiken_cheese.png',
                    textTitle: 'Пицца "Курица-сыр"',
                    textDescription:
                        'Соус итальянский, соус фирменный, сыр моцарелла, сочная курочка, свежие томаты, оливки, 2 вида фирменных специй, соус песто ',
                    textWeight: 'Вес: 570 гр.',
                    textPrice: '430 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 530,
                    imagePath: 'assets/images/pizza/hawaiia.png',
                    textTitle: 'Пицца "Гавайи"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, сочная курочка, маринованный ананас, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '430 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 530,
                    imagePath: 'assets/images/pizza/chili.png',
                    textTitle: 'Пицца "Чили"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, сочная курочка, лук маринованный, перец халапеньо, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '410 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 540,
                    imagePath: 'assets/images/pizza/sicilia.png',
                    textTitle: 'Пицца "Сицилийская"',
                    textDescription:
                        'Соус итальянский, фирменный соус, сыр моцарелла, курица, перец болгарский, лук маринованный, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '410 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 540,
                    imagePath: 'assets/images/pizza/ham_mushrooms.png',
                    textTitle: 'Пицца "Ветчина Грибы"',
                    textDescription:
                        'Соус итальянский, соус фирменный, сыр моцарелла, жаренные грибочки, ветчина, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 590 гр.',
                    textPrice: '410 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 510,
                    imagePath: 'assets/images/pizza/margarita.png',
                    textTitle: 'Пицца "Маргарита"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, свежие томаты, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560 гр.',
                    textPrice: '400 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Фри-меню",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/fries/small.png',
                    textTitle: 'Малая картошка фри',
                    textWeight: 'Вес: 100 гр.',
                    textPrice: '89 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/fries/big.png',
                    textTitle: 'Большая картошка фри',
                    textWeight: 'Вес: 150 гр.',
                    textPrice: '129 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/fries/derevenski.png',
                    textTitle: 'Картофель по-деревенски',
                    textWeight: 'Вес: 150 гр.',
                    textPrice: '129 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/fries/bbq.png',
                    textTitle: 'Соус Heinz, барбекью',
                    textWeight: 'Объем: 25 мл.',
                    textPrice: '35 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/fries/cheese.png',
                    textTitle: 'Соус Heinz, сырный',
                    textWeight: 'Объем: 25 мл.',
                    textPrice: '35 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/fries/tomato.png',
                    textTitle: 'Соус Heinz, томатный',
                    textWeight: 'Объем: 25 мл.',
                    textPrice: '35 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Напитки",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cranberry.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cranberry_small.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 230 мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/seabuckthorn.png',
                    textTitle: 'Морс облепиховый',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/seabuckthorn_small.png',
                    textTitle: 'Морс облепиховый',
                    textWeight: 'Объем: 230 мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/currant.png',
                    textTitle: 'Морс смородиновый',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/currant_small.png',
                    textTitle: 'Морс смородиновый',
                    textWeight: 'Объем: 230 мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cranberry.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cranberry_small.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 230 мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/pulpy.png',
                    textTitle: 'Pulpy',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cola.png',
                    textTitle: '"Добрый" Cola',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '99 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/sprite.png',
                    textTitle: '"Добрый" Sprite',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/fanta.png',
                    textTitle: '"Добрый" Fanta',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '99 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cola_033.png',
                    textTitle: '"Добрый" Cola',
                    textWeight: 'Объем: 330 мл.',
                    textPrice: '79 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/bona_gas.png',
                    textTitle: 'Bona Aqua, газированная',
                    textWeight: 'Объем: 200 мл.',
                    textPrice: '69 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/bona.png',
                    textTitle: 'Bona Aqua, негазированная',
                    textWeight: 'Объем: 200 мл.',
                    textPrice: '69 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/tea.png',
                    textTitle: 'Rich, зеленый чай',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/mango.png',
                    textTitle: 'Rich, зеленый чай с манго',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/lemon.png',
                    textTitle: 'Rich, черный чай с лимоном',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/peach.png',
                    textTitle: 'Rich, черный чай с персиком',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/apple.png',
                    textTitle: 'Сок "Добрый", яблоко',
                    textWeight: 'Объем: 300 мл.',
                    textPrice: '89 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/multifruit.png',
                    textTitle: 'Сок "Добрый", мультифрукт',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '89 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/orange.png',
                    textTitle: 'Сок "Добрый", апельсин',
                    textWeight: 'Объем: 300 мл.',
                    textPrice: '89 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/tomato.png',
                    textTitle: 'Сок "Добрый", томат',
                    textWeight: 'Объем: 500 мл.',
                    textPrice: '89 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Молочные коктейли",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCardLong(
                    containerHeight: 400,
                    imagePath: 'assets/images/cocktails/bananaORmango.png',
                    textTitle: 'Молочный коктейль, манго',
                    textDescription: 'Молоко, мороженое, сироп манго',
                    textWeight: 'Объем: 300 мл.',
                    textPrice: '119 ₽'),
                Spacer(),
                ProductCardLong(
                    containerHeight: 400,
                    imagePath: 'assets/images/cocktails/bananaORmango.png',
                    textTitle: 'Молочный коктейль, банан',
                    textDescription: 'Молоко, мороженое, сироп банановый',
                    textWeight: 'Объем: 300 мл.',
                    textPrice: '119 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    containerHeight: 420,
                    imagePath: 'assets/images/cocktails/chocolate.png',
                    textTitle: 'Молочный коктейль, шоколад',
                    textDescription: 'Молоко, мороженое, сироп шоколадный',
                    textWeight: 'Объем: 300 мл.',
                    textPrice: '119 ₽'),
                Spacer(),
                ProductCardLong(
                    containerHeight: 420,
                    imagePath: 'assets/images/cocktails/strawberry.png',
                    textTitle: 'Молочный коктейль, клубника',
                    textDescription: 'Молоко, мороженое, сироп клубничный',
                    textWeight: 'Объем: 300 мл.',
                    textPrice: '119 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Шаурма",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/ai_fresh.png',
                    textTitle: 'Ай-фреш',
                    textDescription:
                        'Сочная курица, маринованный огурчик, дольки свежих помидор, сыр Чеддер, пшеничная тортилья и фирменный соус',
                    textWeight: 'Вес: 170 гр.',
                    textPrice: '169 ₽'),
                Spacer(),
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/250.png',
                    textTitle: 'Шаурма веган',
                    textDescription:
                        'Лаваш, салат из капусты, свежей морковки, огурчиков и томатов, фирменный соус',
                    textWeight: 'Вес: 250 гр.',
                    textPrice: '169 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/250.png',
                    textTitle: 'Шаурма с говядиной "M"',
                    textDescription:
                        'Лаваш, сочная говяжья котлетка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
                    textWeight: 'Вес: 250 гр.',
                    textPrice: '260 ₽'),
                Spacer(),
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/380.png',
                    textTitle: 'Шаурма с говядиной "L"',
                    textDescription:
                        'Лаваш, салат из капусты, свежей морковки, огурчиков и томатов, фирменный соус',
                    textWeight: 'Вес: 380 гр.',
                    textPrice: '310 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/450.png',
                    textTitle: 'Шаурма с говядиной "XL"',
                    textDescription:
                        'Лаваш, сочная говяжья котлетка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
                    textWeight: 'Вес: 450 гр.',
                    textPrice: '450 ₽'),
                Spacer(),
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/250.png',
                    textTitle: 'Шаурма с курицей "M"',
                    textDescription:
                        'Лаваш, нежнейшая курочка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
                    textWeight: 'Вес: 250 гр.',
                    textPrice: '189 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/380.png',
                    textTitle: 'Шаурма с курицей "L"',
                    textDescription:
                        'Лаваш, нежнейшая курочка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
                    textWeight: 'Вес: 380 гр.',
                    textPrice: '219 ₽'),
                Spacer(),
                ProductCardShawarma(
                    imagePath: 'assets/images/shawarma/450.png',
                    textTitle: 'Шаурма с курицей "XL"',
                    textDescription:
                        'Лаваш, нежнейшая курочка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
                    textWeight: 'Вес: 450 гр.',
                    textPrice: '329 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Бургеры",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/burgers/chiken.png',
                    textTitle: 'Чикен бургер',
                    textDescription:
                        'Ароматная булочка с кунжутом, фирменный соус, репчатый лук, свежие томаты, сыр чеддер, салат айсберг, сочная куриная котлетка',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '249 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/burgers/chiken_double.png',
                    textTitle: 'Двойной Чикен бургер',
                    textDescription:
                        'Ароматная булочка с кунжутом, фирменный соус, репчатый лук, свежие томаты, сыр чеддер, салат айсберг, две сочные куриные котлетки',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '349 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/burgers/fresh.png',
                    textTitle: 'Фреш бургер',
                    textDescription:
                        'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, сочная говяжья котлетка',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '189 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/burgers/fresh_double.png',
                    textTitle: 'Двойной Фреш бургер',
                    textDescription:
                        'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, две сочные говяжьи котлетки',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '259 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/burgers/cheese.png',
                    textTitle: 'Чизбургер',
                    textDescription:
                        'Ароматная булочка, сочная курино - говяжья котлета, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '129 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/burgers/cheese_double.png',
                    textTitle: 'Двойной Чизбургер',
                    textDescription:
                        'Ароматная булочка, 2 сочные курино - говяжьи котлеты, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '189 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/burgers/hamburger.png',
                    textTitle: 'Гамбургер',
                    textDescription:
                        'Ароматная булочка, сочная курино - говяжья котлета, маринованные огурчики, репчатый лук, фирменный соус',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '119 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/burgers/hamburger_double.png',
                    textTitle: 'Двойной Гамбургер',
                    textDescription:
                        'Ароматная булочка, 2 сочные курино - говяжьи котлеты, маринованные огурчики, репчатый лук, фирменный соус',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '169 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Дёнер",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 570,
                    imagePath: 'assets/images/doners/chiken.png',
                    textTitle: 'Дёнер с курицей',
                    textDescription:
                        'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из курочки.',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '239 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 570,
                    imagePath: 'assets/images/doners/beef.png',
                    textTitle: 'Дёнер с говядиной',
                    textDescription:
                        'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из говядины.',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '279 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 510,
                    imagePath: 'assets/images/doners/bosna.png',
                    textTitle: 'Босна кебаб',
                    textDescription:
                        'Сочный люля-кебаб, хрустящая булочка, маринованный огурец, свежий помидор, фирменный соус, маринованный лук.',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '309 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Горячие блюда",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCardShawarma(
                    imagePath: 'assets/images/dishes/kebab.png',
                    textTitle: 'Люля-Кебаб',
                    textDescription:
                        'Мясо курицы, говядины, баранины, лук, специи',
                    textDescription2:
                        'Подаётся с салатом (маринованный лук с зеленью) и томатным соусом.',
                    textWeight: 'Вес:170 гр.',
                    textPrice: '230 ₽'),
                Spacer(),
                ProductCardShawarma(
                    imagePath: 'assets/images/dishes/beef.png',
                    textTitle: 'Шашлык из говядины',
                    textDescription: 'Говядина, специи',
                    textDescription2:
                        'Подаётся с салатом (маринованный лук с зеленью) и томатным соусом',
                    textWeight: 'Вес:170 гр.',
                    textPrice: '320 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardShawarma(
                    imagePath: 'assets/images/dishes/chiken.png',
                    textTitle: 'Шашлык из курицы',
                    textDescription: 'Филе куриной грудки, специи',
                    textDescription2:
                        'Подаётся с салатом (маринованный лук с зеленью) и томатным соусом',
                    textWeight: 'Вес:210 гр.',
                    textPrice: '260 ₽'),
                Spacer(),
                ProductCardShawarma(
                    imagePath: 'assets/images/dishes/pilaf.png',
                    textTitle: 'Плов с говядиной',
                    textDescription:
                        'Рис, морковь два вида, лук, говядина, специи, нут, изюм, отборная говядина.',
                    textWeight: 'Вес:290 гр.',
                    textPrice: '260 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Салаты",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 510,
                    imagePath: 'assets/images/salads/caesar.png',
                    textTitle: 'Салат "Цезарь"',
                    textDescription:
                        'Филе куриной грудки, помидорки черри, пекинская капуста, сыр Пармезан, пряные гренки, фирменный соус Цезарь',
                    textWeight: 'Вес:120 гр.',
                    textPrice: '139 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 510,
                    imagePath: 'assets/images/salads/greek.png',
                    textTitle: 'Салат "Греческий"',
                    textDescription:
                        'Пекинская капуста, болгарский перец, свежие огурчики, свежие томаты, маслины, сыр Фета, фирменный соус',
                    textWeight: 'Вес:140 гр.',
                    textPrice: '139 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Выпечка",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 375,
                    imagePath: 'assets/images/bakery/sausage.png',
                    textTitle: 'Сосиска в тесте',
                    textDescription: 'Сосиска, тесто бездрожжевое ',
                    textWeight: 'Вес:100 гр.',
                    textPrice: '45 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 375,
                    imagePath: 'assets/images/bakery/cheburek.png',
                    textTitle: 'Чебурек',
                    textDescription: 'Фарш курица-говядина, лук, тесто.',
                    textWeight: 'Вес:130 гр.',
                    textPrice: '60 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/bakery/beef.png',
                    textTitle: 'Самса с говядиной',
                    textDescription:
                        'Говядина рубленная, лук, специи, кунжут, тесто слоёное',
                    textWeight: 'Вес:180 гр.',
                    textPrice: '80 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/bakery/chiken.png',
                    textTitle: 'Самса с курицей',
                    textDescription:
                        'Филе куриной грудки, лук, специи, кунжут, тесто слоёное',
                    textWeight: 'Вес:180 гр.',
                    textPrice: '75 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 350,
                    imagePath: 'assets/images/bakery/flatbread.png',
                    textTitle: 'Лепешка',
                    textWeight: 'Вес:130 гр.',
                    textPrice: '35 ₽'),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 50, top: 30),
              child: const Text(
                "Десерты",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 520,
                    imagePath: 'assets/images/desserts/pai.png',
                    textTitle: 'Пай фруктовый',
                    textDescription:
                        'Тесто песочное, свежие фрукты и ягоды, джем, взбитые сливки',
                    textWeight: 'Вес:? гр.',
                    textPrice: '119 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 520,
                    imagePath: 'assets/images/desserts/banana.png',
                    textTitle: 'Пай Шоколад-банан',
                    textDescription:
                        'Песочное тесто, сливки растительные, сгущёнка цельная, глазурь шоколадная, арахис, сгущёнка варёная, банан',
                    textWeight: 'Вес:100 гр.',
                    textPrice: '89 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 530,
                    imagePath: 'assets/images/desserts/snickers.png',
                    textTitle: 'Пай Сникерс',
                    textDescription:
                        'Песочное тесто, сливки растительные, глазурь шоколадная, арахис, шоколад молочный, сгущёнка варёная, карамель, какао порошок. ',
                    textWeight: 'Вес:100 гр.',
                    textPrice: '89 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 530,
                    imagePath: 'assets/images/desserts/coconut.png',
                    textTitle: 'Пай Малина-кокос',
                    textDescription:
                        'Песочное тесто, сливки растительные, глазурь шоколадная, малиновый конфитюр, кокосовая стружка, молоко, сыр творожный',
                    textWeight: 'Вес:100 гр.',
                    textPrice: '89 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 420,
                    imagePath: 'assets/images/desserts/peanut.png',
                    textTitle: 'Пахлава с арахисом',
                    textDescription: 'Орехи, мёд, тесто слоёное',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '69 ₽'),
                Spacer(),
                ProductCard(
                    containerHeight: 420,
                    imagePath: 'assets/images/desserts/walnut.png',
                    textTitle: 'Пахлава с грецким орехом',
                    textDescription: 'Орехи, мёд, тесто слоёное',
                    textWeight: 'Вес: ? гр.',
                    textPrice: '79 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    containerHeight: 360,
                    imagePath: 'assets/images/desserts/muffin.png',
                    textTitle: 'Маффин шоколадный',
                    textWeight: 'Вес: 90 гр.',
                    textPrice: '69 ₽'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
