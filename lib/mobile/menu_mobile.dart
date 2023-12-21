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
                    imagePath: 'assets/images/pizza/meat.png',
                    textTitle: 'Пицца "Мясная"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, конина, пепперони, свежие томаты, оливки, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
                    textPrice: '500 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/pizza/cheese.png',
                    textTitle: 'Пицца "Сырная"',
                    textDescription:
                        'Соус итальянский, фирменный соус, сыр моцарелла, сыр чеддер, сыр брынза, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
                    textPrice: '480 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/pizza/salami.png',
                    textTitle: 'Пицца "Салями"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, колбаски салями, перчик болгарский, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
                    textPrice: '460 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/pizza/pepperoni.png',
                    textTitle: 'Пицца "Пепперони"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, колбаски пепперони, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
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
                    textWeight: 'Вес: 560гр.',
                    textPrice: '480 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/pizza/chiken_cheese.png',
                    textTitle: 'Пицца "Курица-сыр"',
                    textDescription:
                        'Соус итальянский, соус фирменный, сыр моцарелла, сочная курочка, свежие томаты, оливки, 2 вида фирменных специй, соус песто ',
                    textWeight: 'Вес: 570гр.',
                    textPrice: '430 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/pizza/hawaiia.png',
                    textTitle: 'Пицца "Гавайи"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, сочная курочка, маринованный ананас, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
                    textPrice: '430 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/pizza/chili.png',
                    textTitle: 'Пицца "Чили"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, сочная курочка, лук маринованный, перец халапеньо, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
                    textPrice: '410 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/pizza/sicilia.png',
                    textTitle: 'Пицца "Сицилийская"',
                    textDescription:
                        'Соус итальянский, фирменный соус, сыр моцарелла, курица, перец болгарский, лук маринованный, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
                    textPrice: '410 ₽'),
                Spacer(),
                ProductCard(
                    imagePath: 'assets/images/pizza/ham_mushrooms.png',
                    textTitle: 'Пицца "Ветчина Грибы"',
                    textDescription:
                        'Соус итальянский, соус фирменный, сыр моцарелла, жаренные грибочки, ветчина, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 590.',
                    textPrice: '410 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCard(
                    imagePath: 'assets/images/pizza/margarita.png',
                    textTitle: 'Пицца "Маргарита"',
                    textDescription:
                        'Соус итальянский, фирменные соус, сыр моцарелла, свежие томаты, 2 вида фирменных специй, соус песто',
                    textWeight: 'Вес: 560гр.',
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
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/fries/small.png',
                    textTitle: 'Малая картошка фри',
                    textWeight: 'Вес: 100гр.',
                    textPrice: '89 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/fries/big.png',
                    textTitle: 'Большая картошка фри',
                    textWeight: 'Вес: 150гр.',
                    textPrice: '129 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/fries/derevenski.png',
                    textTitle: 'Картофель по-деревенски',
                    textWeight: 'Вес: 150гр.',
                    textPrice: '129 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/fries/bbq.png',
                    textTitle: 'Соус барбекю',
                    textWeight: 'Объем: 25мл.',
                    textPrice: '35 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/fries/cheese.png',
                    textTitle: 'Сырный соус',
                    textWeight: 'Объем: 25мл.',
                    textPrice: '35 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/fries/tomato.png',
                    textTitle: 'Соус томатный',
                    textWeight: 'Объем: 25мл.',
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
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/cranberry.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/cranberry_small.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 230мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/seabuckthorn.png',
                    textTitle: 'Морс облепиховый',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/seabuckthorn_small.png',
                    textTitle: 'Морс облепиховый',
                    textWeight: 'Объем: 230мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/currant.png',
                    textTitle: 'Морс смородиновый',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/currant_small.png',
                    textTitle: 'Морс смородиновый',
                    textWeight: 'Объем: 230мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/cranberry.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardSmall(
                    imagePath: 'assets/images/drinks/cranberry_small.png',
                    textTitle: 'Морс клюквенный',
                    textWeight: 'Объем: 230мл.',
                    textPrice: '49 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/pulpy.png',
                    textTitle: 'Pulpy',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cola.png',
                    textTitle: '"Добрый" Cola',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '99 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/sprite.png',
                    textTitle: '"Добрый" Sprite',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/fanta.png',
                    textTitle: '"Добрый" Fanta',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '99 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/cola_033.png',
                    textTitle: '"Добрый" Cola',
                    textWeight: 'Объем: 330мл.',
                    textPrice: '79 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/bona_gas.png',
                    textTitle: 'Bona Aqua, газированная',
                    textWeight: 'Объем: 200мл.',
                    textPrice: '69 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/bona.png',
                    textTitle: 'Bona Aqua, негазированная',
                    textWeight: 'Объем: 200мл.',
                    textPrice: '69 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/tea.png',
                    textTitle: 'Rich, зеленый чай',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/mango.png',
                    textTitle: 'Rich, зеленый чай с манго',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/lemon.png',
                    textTitle: 'Rich, черный чай с лимоном',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/peach.png',
                    textTitle: 'Rich, черный чай с персиком',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '109 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/apple.png',
                    textTitle: 'Сок "Добрый", яблоко',
                    textWeight: 'Объем: 300мл.',
                    textPrice: '89 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/multifruit.png',
                    textTitle: 'Сок "Добрый", мультифрукт',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '89 ₽'),
                Spacer(),
                ProductCardLong(
                    imagePath: 'assets/images/drinks/orange.png',
                    textTitle: 'Сок "Добрый", апельсин',
                    textWeight: 'Объем: 300мл.',
                    textPrice: '89 ₽'),
              ],
            ),
            const SizedBox(height: 50),
            const Row(
              children: [
                ProductCardLong(
                    imagePath: 'assets/images/drinks/tomato.png',
                    textTitle: 'Сок "Добрый", томат',
                    textWeight: 'Объем: 500мл.',
                    textPrice: '89 ₽'),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
