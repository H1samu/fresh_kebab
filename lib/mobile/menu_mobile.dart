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
                ProductCard(
                    imagePath: 'assets/images/fries/small.png',
                    textTitle: 'Малая картошка фри',
                    textWeight: 'Вес: 100гр.',
                    textPrice: '89 ₽'),
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
          ],
        ),
      ),
    ],
  );
}
