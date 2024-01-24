import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/product_card.dart';

// Данные с позициями для меню
const List<Widget> pizzaCards = [
  ProductCard(
      imagePath: 'assets/images/pizza/meat.png',
      textTitle: 'Пицца\n"Мясная"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, конина, пепперони, свежие томаты, оливки, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '500 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/cheese.png',
      textTitle: 'Пицца\n"Сырная"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сыр чеддер, сыр брынза, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '480 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/salami.png',
      textTitle: 'Пицца\n"Салями"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, колбаски салями, перчик болгарский, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '460 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/pepperoni.png',
      textTitle: 'Пицца\n"Пепперони"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, колбаски пепперони, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '450 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/premier.png',
      textTitle: 'Пицца\n"Премьер"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, конина, жаренные грибочки, маринованные огурчики, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '480 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/chiken_cheese.png',
      textTitle: 'Пицца\n"Курица-сыр"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, свежие томаты, оливки, фирменные специи',
      textWeight: 'Вес: 570 гр.',
      textPrice: '430 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/hawaiia.png',
      textTitle: 'Пицца\n"Гавайи"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, маринованный ананас, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '430 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/chili.png',
      textTitle: 'Пицца\n"Чили"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, лук маринованный, перец халапеньо, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '410 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/sicilia.png',
      textTitle: 'Пицца\n"Сицилийская"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, курица, перец болгарский, лук маринованный, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '410 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/ham_mushrooms.png',
      textTitle: 'Пицца\n"Ветчина Грибы"',
      textDescription:
          'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, жаренные грибочки, ветчина, фирменные специи',
      textWeight: 'Вес: 590 гр.',
      textPrice: '410 ₽'),
  ProductCard(
      imagePath: 'assets/images/pizza/margarita.png',
      textTitle: 'Пицца\n"Маргарита"',
      textDescription:
          'Соус итальянский, соус фирменные, соус песто, сыр моцарелла, свежие томаты, фирменные специи',
      textWeight: 'Вес: 560 гр.',
      textPrice: '400 ₽'),
];

const List<Widget> friesCards = [
  ProductCardSmall(
      imagePath: 'assets/images/fries/small.png',
      textTitle: 'Картофель-фри\n(Большая)',
      textWeight: 'Вес: 150 гр.',
      textPrice: '129 ₽'),
  ProductCardSmall(
      imagePath: 'assets/images/fries/small.png',
      textTitle: 'Картофель-фри\n(Маленькая)',
      textWeight: 'Вес: 100 гр.',
      textPrice: '89 ₽'),
  ProductCardSmall(
      imagePath: 'assets/images/fries/derevenski.png',
      textTitle: 'Картофель\nпо-деревенски',
      textWeight: 'Вес: 150 гр.',
      textPrice: '129 ₽'),
  ProductCardSmall(
      imagePath: 'assets/images/fries/bbq.png',
      textTitle: 'Соус Heinz,\nбарбекью',
      textWeight: 'Объем: 25 мл.',
      textPrice: '35 ₽'),
  ProductCardSmall(
      imagePath: 'assets/images/fries/cheese.png',
      textTitle: 'Соус Heinz,\nсырный',
      textWeight: 'Объем: 25 мл.',
      textPrice: '35 ₽'),
  ProductCardSmall(
      imagePath: 'assets/images/fries/tomato.png',
      textTitle: 'Соус Heinz,\nтоматный',
      textWeight: 'Объем: 25 мл.',
      textPrice: '35 ₽'),
];

const List<Widget> drinksCards = [
  ProductCardLong(
      imagePath: 'assets/images/drinks/cranberry.png',
      textTitle: 'Морс\nклюквенный',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/cranberry_small.png',
      textTitle: 'Морс\nклюквенный',
      textWeight: 'Объем: 230 мл.',
      textPrice: '49 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/seabuckthorn.png',
      textTitle: 'Морс\nоблепиховый',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/seabuckthorn_small.png',
      textTitle: 'Морс\nоблепиховый',
      textWeight: 'Объем: 230 мл.',
      textPrice: '49 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/currant.png',
      textTitle: 'Морс\nсмородиновый',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/currant_small.png',
      textTitle: 'Морс\nсмородиновый',
      textWeight: 'Объем: 230 мл.',
      textPrice: '49 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/cranberry.png',
      textTitle: 'Морс\nклюквенный',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/cranberry_small.png',
      textTitle: 'Морс\nклюквенный',
      textWeight: 'Объем: 230 мл.',
      textPrice: '49 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/pulpy.png',
      textTitle: '"Pulpy",\nапельсин',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/cola.png',
      textTitle: '"Добрый"\nCola',
      textWeight: 'Объем: 500 мл.',
      textPrice: '99 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/sprite.png',
      textTitle: '"Добрый"\nSprite',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/fanta.png',
      textTitle: '"Добрый"\nFanta',
      textWeight: 'Объем: 500 мл.',
      textPrice: '99 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/cola_033.png',
      textTitle: '"Добрый"\nCola',
      textWeight: 'Объем: 330 мл.',
      textPrice: '79 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/bona_gas.png',
      textTitle: '"Bona Aqua",\nгазированная',
      textWeight: 'Объем: 200 мл.',
      textPrice: '69 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/bona.png',
      textTitle: '"Bona Aqua",\nнегазированная',
      textWeight: 'Объем: 200 мл.',
      textPrice: '69 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/tea.png',
      textTitle: '"Rich", зеленый\nчай',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/mango.png',
      textTitle: '"Rich", зеленый\n чай с манго',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/lemon.png',
      textTitle: '"Rich", черный\nчай с лимоном',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/peach.png',
      textTitle: '"Rich", черный\nчай с персиком',
      textWeight: 'Объем: 500 мл.',
      textPrice: '109 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/apple.png',
      textTitle: 'Сок "Добрый",\nяблоко',
      textWeight: 'Объем: 300 мл.',
      textPrice: '89 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/multifruit.png',
      textTitle: 'Сок "Добрый",\nмультифрукт',
      textWeight: 'Объем: 500 мл.',
      textPrice: '89 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/orange.png',
      textTitle: 'Сок "Добрый",\nапельсин',
      textWeight: 'Объем: 300 мл.',
      textPrice: '89 ₽'),
  ProductCardLong(
      imagePath: 'assets/images/drinks/tomato.png',
      textTitle: 'Сок "Добрый",\nтомат',
      textWeight: 'Объем: 500 мл.',
      textPrice: '89 ₽'),
];

const List<Widget> cocktailsCards = [
  ProductCardLong(
      containerHeight: 400,
      imagePath: 'assets/images/cocktails/bananaORmango.png',
      textTitle: 'Молочный\nкоктейль,\nманго',
      textDescription: 'Молоко, мороженое, сироп манго',
      textWeight: 'Объем: 300 мл.',
      textPrice: '119 ₽'),
  ProductCardLong(
      containerHeight: 400,
      imagePath: 'assets/images/cocktails/bananaORmango.png',
      textTitle: 'Молочный\nкоктейль,\nбанан',
      textDescription: 'Молоко, мороженое, сироп банановый',
      textWeight: 'Объем: 300 мл.',
      textPrice: '119 ₽'),
  ProductCardLong(
      containerHeight: 420,
      imagePath: 'assets/images/cocktails/chocolate.png',
      textTitle: 'Молочный\nкоктейль,\nшоколад',
      textDescription: 'Молоко, мороженое, сироп шоколадный',
      textWeight: 'Объем: 300 мл.',
      textPrice: '119 ₽'),
  ProductCardLong(
      containerHeight: 420,
      imagePath: 'assets/images/cocktails/strawberry.png',
      textTitle: 'Молочный\nкоктейль,\nклубника',
      textDescription: 'Молоко, мороженое, сироп клубничный',
      textWeight: 'Объем: 300 мл.',
      textPrice: '119 ₽'),
];

const List<Widget> shawarmaCards = [
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/ai_fresh.png',
      textTitle: 'Ай-фреш',
      textDescription:
          'Сочная курица, маринованный огурчик, дольки свежих помидор, сыр Чеддер, пшеничная тортилья и фирменный соус',
      textWeight: 'Вес: 170 гр.',
      textPrice: '169 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/250.png',
      textTitle: 'Шаурма\nвеганская',
      textDescription:
          'Лаваш, салат из капусты, свежей морковки, огурчиков и томатов, фирменный соус',
      textWeight: 'Вес: 250 гр.',
      textPrice: '169 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/250.png',
      textTitle: 'Шаурма "M",\nговядина',
      textDescription:
          'Лаваш, сочная говяжья котлетка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
      textWeight: 'Вес: 250 гр.',
      textPrice: '260 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/380.png',
      textTitle: 'Шаурма "L",\nговядина',
      textDescription:
          'Лаваш, салат из капусты, свежей морковки, огурчиков и томатов, фирменный соус',
      textWeight: 'Вес: 380 гр.',
      textPrice: '310 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/450.png',
      textTitle: 'Шаурма "XL",\nговядина',
      textDescription:
          'Лаваш, сочная говяжья котлетка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
      textWeight: 'Вес: 450 гр.',
      textPrice: '450 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/250.png',
      textTitle: 'Шаурма "M",\nкурица',
      textDescription:
          'Лаваш, нежнейшая курочка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
      textWeight: 'Вес: 250 гр.',
      textPrice: '189 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/380.png',
      textTitle: 'Шаурма "L",\nкурица',
      textDescription:
          'Лаваш, нежнейшая курочка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
      textWeight: 'Вес: 380 гр.',
      textPrice: '219 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/shawarma/450.png',
      textTitle: 'Шаурма "XL",\nкурица',
      textDescription:
          'Лаваш, нежнейшая курочка, фирменный соус, салат из капусты, свежей морковки, огурчиков и томатов',
      textWeight: 'Вес: 450 гр.',
      textPrice: '329 ₽'),
];

const List<Widget> burgersCards = [
  ProductCard(
      imagePath: 'assets/images/burgers/chiken.png',
      textTitle: 'Чикен бургер',
      textDescription:
          'Ароматная булочка с кунжутом, фирменный соус, репчатый лук, свежие томаты, сыр чеддер, салат айсберг, сочная куриная котлетка',
      textWeight: 'Вес: ? гр.',
      textPrice: '249 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/chiken_double.png',
      textTitle: 'Двойной\nЧикен бургер',
      textDescription:
          'Ароматная булочка с кунжутом, фирменный соус, репчатый лук, свежие томаты, сыр чеддер, салат айсберг, две сочные куриные котлетки',
      textWeight: 'Вес: ? гр.',
      textPrice: '349 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/fresh.png',
      textTitle: 'Фреш бургер',
      textDescription:
          'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, сочная говяжья котлетка',
      textWeight: 'Вес: ? гр.',
      textPrice: '189 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/fresh_double.png',
      textTitle: 'Двойной\nФреш бургер',
      textDescription:
          'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, две сочные говяжьи котлетки',
      textWeight: 'Вес: ? гр.',
      textPrice: '259 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/cheese.png',
      textTitle: 'Чизбургер',
      textDescription:
          'Ароматная булочка, сочная курино - говяжья котлета, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
      textWeight: 'Вес: ? гр.',
      textPrice: '129 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/cheese_double.png',
      textTitle: 'Двойной\nЧизбургер',
      textDescription:
          'Ароматная булочка, 2 сочные курино - говяжьи котлеты, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
      textWeight: 'Вес: ? гр.',
      textPrice: '189 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/hamburger.png',
      textTitle: 'Гамбургер',
      textDescription:
          'Ароматная булочка, сочная курино - говяжья котлета, маринованные огурчики, репчатый лук, фирменный соус',
      textWeight: 'Вес: ? гр.',
      textPrice: '119 ₽'),
  ProductCard(
      imagePath: 'assets/images/burgers/hamburger_double.png',
      textTitle: 'Двойной\nГамбургер',
      textDescription:
          'Ароматная булочка, 2 сочные курино - говяжьи котлеты, маринованные огурчики, репчатый лук, фирменный соус',
      textWeight: 'Вес: ? гр.',
      textPrice: '169 ₽'),
];

const List<Widget> donersCards = [
  ProductCard(
      imagePath: 'assets/images/doners/chiken.png',
      textTitle: 'Дёнер\nс курицей',
      textDescription:
          'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из курочки.',
      textWeight: 'Вес: ? гр.',
      textPrice: '239 ₽'),
  ProductCard(
      imagePath: 'assets/images/doners/beef.png',
      textTitle: 'Дёнер\nс говядиной',
      textDescription:
          'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из говядины.',
      textWeight: 'Вес: ? гр.',
      textPrice: '279 ₽'),
  ProductCard(
      imagePath: 'assets/images/doners/bosna.png',
      textTitle: 'Босна кебаб',
      textDescription:
          'Сочный люля-кебаб, хрустящая булочка, маринованный огурец, свежий помидор, фирменный соус, маринованный лук.',
      textWeight: 'Вес: ? гр.',
      textPrice: '309 ₽'),
];

const List<Widget> dishesCards = [
  ProductCardShawarma(
      imagePath: 'assets/images/dishes/kebab.png',
      textTitle: 'Люля-Кебаб',
      textDescription: 'Мясо курицы, говядины, баранины, лук, специи',
      textDescription2:
          'Подаётся с салатом (маринованный лук с зеленью) и томатным соусом.',
      textWeight: 'Вес:170 гр.',
      textPrice: '230 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/dishes/beef.png',
      textTitle: 'Шашлык,\nговядина',
      textDescription: 'Говядина, специи',
      textDescription2:
          'Подаётся с салатом (маринованный лук с зеленью) и томатным соусом',
      textWeight: 'Вес:170 гр.',
      textPrice: '320 ₽'),
  ProductCardShawarma(
      imagePath: 'assets/images/dishes/chiken.png',
      textTitle: 'Шашлык,\nкурица',
      textDescription: 'Филе куриной грудки, специи',
      textDescription2:
          'Подаётся с салатом (маринованный лук с зеленью) и томатным соусом',
      textWeight: 'Вес:210 гр.',
      textPrice: '260 ₽'),
  ProductCard(
      imagePath: 'assets/images/dishes/pilaf.png',
      textTitle: 'Плов\nговяжий',
      textDescription:
          'Рис, морковь два вида, лук, говядина, специи, нут, изюм, отборная говядина.',
      textWeight: 'Вес:290 гр.',
      textPrice: '260 ₽'),
];

const List<Widget> saladsCards = [
  ProductCard(
      imagePath: 'assets/images/salads/caesar.png',
      textTitle: 'Салат\n"Цезарь"',
      textDescription:
          'Филе куриной грудки, помидорки черри, пекинская капуста, сыр Пармезан, пряные гренки, фирменный соус Цезарь',
      textWeight: 'Вес:120 гр.',
      textPrice: '139 ₽'),
  ProductCard(
      imagePath: 'assets/images/salads/greek.png',
      textTitle: 'Салат\n"Греческий"',
      textDescription:
          'Пекинская капуста, болгарский перец, свежие огурчики, свежие томаты, маслины, сыр Фета, фирменный соус',
      textWeight: 'Вес:140 гр.',
      textPrice: '139 ₽'),
];

const List<Widget> bakeryCards = [
  ProductCard(
      imagePath: 'assets/images/bakery/sausage.png',
      textTitle: 'Сосиска в тесте',
      textDescription: 'Сосиска, тесто бездрожжевое ',
      textWeight: 'Вес:100 гр.',
      textPrice: '45 ₽'),
  ProductCard(
      imagePath: 'assets/images/bakery/cheburek.png',
      textTitle: 'Чебурек',
      textDescription: 'Фарш курица-говядина, лук, тесто.',
      textWeight: 'Вес:130 гр.',
      textPrice: '60 ₽'),
  ProductCard(
      imagePath: 'assets/images/bakery/beef.png',
      textTitle: 'Самса,\nговядина',
      textDescription: 'Говядина рубленная, лук, специи, тесто слоёное',
      textWeight: 'Вес:180 гр.',
      textPrice: '80 ₽'),
  ProductCard(
      imagePath: 'assets/images/bakery/chiken.png',
      textTitle: 'Самса,\nкурица',
      textDescription: 'Филе куриной грудки, лук, специи, тесто слоёное',
      textWeight: 'Вес:180 гр.',
      textPrice: '75 ₽'),
  ProductCard(
      imagePath: 'assets/images/bakery/flatbread.png',
      textTitle: 'Лепешка\nиз тандра',
      textWeight: 'Вес:130 гр.',
      textPrice: '35 ₽'),
];

const List<Widget> dessertsCards = [
  ProductCard(
      imagePath: 'assets/images/desserts/pai.png',
      textTitle: 'Пай,\nфруктовый',
      textDescription:
          'Тесто песочное, свежие фрукты и ягоды, джем, взбитые сливки',
      textWeight: 'Вес:? гр.',
      textPrice: '119 ₽'),
  ProductCard(
      imagePath: 'assets/images/desserts/banana.png',
      textTitle: 'Пай,\nбанан-шоколад',
      textDescription:
          'Песочное тесто, сливки, сгущёнка цельная, глазурь, арахис, сгущёнка варёная, банан',
      textWeight: 'Вес:100 гр.',
      textPrice: '89 ₽'),
  ProductCard(
      imagePath: 'assets/images/desserts/snickers.png',
      textTitle: 'Пай,\n"Snickers"',
      textDescription:
          'Песочное тесто, сливки, глазурь, арахис, шоколад, сгущёнка варёная, карамель, какао',
      textWeight: 'Вес:100 гр.',
      textPrice: '89 ₽'),
  ProductCard(
      imagePath: 'assets/images/desserts/coconut.png',
      textTitle: 'Пай,\nмалина-кокос',
      textDescription:
          'Песочное тесто, сливки, малиновый конфитюр, глазурь, сыр творожный, кокосовая стружка',
      textWeight: 'Вес:100 гр.',
      textPrice: '89 ₽'),
  ProductCard(
      imagePath: 'assets/images/desserts/peanut.png',
      textTitle: 'Пахлава,\nарахис',
      textDescription: 'Орехи, мёд, тесто слоёное',
      textWeight: 'Вес: ? гр.',
      textPrice: '69 ₽'),
  ProductCard(
      imagePath: 'assets/images/desserts/walnut.png',
      textTitle: 'Пахлава,\nгрецкий орех',
      textDescription: 'Орехи, мёд, тесто слоёное',
      textWeight: 'Вес: ? гр.',
      textPrice: '79 ₽'),
  ProductCard(
      imagePath: 'assets/images/desserts/muffin.png',
      textTitle: 'Маффин\nшоколадный',
      textDescription: 'Какао, молоко, сливочное масло',
      textWeight: 'Вес: 90 гр.',
      textPrice: '69 ₽'),
];

// Текст соглашения об обработке персональных данных
class Agreement extends StatelessWidget {
  const Agreement({super.key});

  @override
  Widget build(BuildContext context) {
    const agreementStyle = TextStyle(fontSize: 12);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          height: screenHeight * 0.95,
          width: screenWidth * 0.95,
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: const [
              Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
                'Для закрытия соглашения нажмите на любом месте.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                'Политика конфиденциальности',
              ),
              Text(
                style: agreementStyle,
                'Настоящая Политика конфиденциальности персональных данных (далее — Политика конфиденциальности) действует в отношении всей информации, которую данный сайт, на котором размещен текст этой Политики конфиденциальности, может получить о Пользователе, а также любых программ и продуктов, размещенных на нем.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '1. Определение терминов',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1 В настоящей Политике конфиденциальности используются следующие термины:',
              ),
              Text(
                style: agreementStyle,
                '1.1.1. «Администрация сайта» – уполномоченные сотрудники на управления сайтом, действующие от его имени, которые организуют и (или) осуществляет обработку персональных данных, а также определяет цели обработки персональных данных, состав персональных данных, подлежащих обработке, действия (операции), совершаемые с персональными данными.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1.2. «Персональные данные» — любая информация, относящаяся к прямо или косвенно определенному или определяемому физическому лицу (субъекту персональных данных).',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1.3. «Обработка персональных данных» — любое действие (операция) или совокупность действий (операций), совершаемых с использованием средств автоматизации или без использования таких средств с персональными данными, включая сбор, запись, систематизацию, накопление, хранение, уточнение (обновление, изменение), извлечение, использование, передачу (распространение, предоставление, доступ), обезличивание, блокирование, удаление, уничтожение персональных данных.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1.4. «Конфиденциальность персональных данных» — обязательное для соблюдения Администрацией сайта требование не допускать их умышленного распространения без согласия субъекта персональных данных или наличия иного законного основания.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1.5. «Пользователь сайта (далее Пользователь)» – лицо, имеющее доступ к сайту, посредством сети Интернет и использующее данный сайт для своих целей.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1.6. «Cookies» — небольшой фрагмент данных, отправленный веб-сервером и хранимый на компьютере пользователя, который веб-клиент или веб-браузер каждый раз пересылает веб-серверу в HTTP-запросе при попытке открыть страницу соответствующего сайта.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '1.1.7. «IP-адрес» — уникальный сетевой адрес узла в компьютерной сети, построенной по протоколу IP.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '2. Общие положения',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '2.1. Использование Пользователем сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '2.1. Использование Пользователем сайта означает согласие с настоящей Политикой конфиденциальности и условиями обработки персональных данных Пользователя.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '2.3.Настоящая Политика конфиденциальности применяется только к данному сайту. Администрация сайта не контролирует и не несет ответственность за сайты третьих лиц, на которые Пользователь может перейти по ссылкам, доступным на данном сайте.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '2.4. Администрация сайта не проверяет достоверность персональных данных, предоставляемых Пользователем сайта.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '3. Предмет политики конфиденциальности',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.1. Настоящая Политика конфиденциальности устанавливает обязательства Администрации сайта по умышленному неразглашению персональных данных, которые Пользователь предоставляет по разнообразным запросам Администрации сайта (например, при регистрации на сайте, оформлении заказа, подписки на уведомления и т.п).',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.2. Персональные данные, разрешённые к обработке в рамках настоящей Политики конфиденциальности, предоставляются Пользователем путём заполнения специальных форм на Сайте и обычно включают в себя следующую информацию:',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.2.1. Имя Пользователя;',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.2.2. Контактный телефон Пользователя;',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.2.3. Адрес электронной почты (e-mail);',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.3. Администрация сайта также принимает усилия по защите Персональных данных, которые автоматически передаются в процессе посещения страниц сайта: IP адрес; информация из cookies; информация о браузере (или иной программе, которая осуществляет доступ к сайту); время доступа; посещенные адреса страниц; реферер (адрес предыдущей страницы) и т.п.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.3.1. Отключение cookies может повлечь невозможность доступа к сайту.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.3.2. Сайт осуществляет сбор статистики об IP-адресах своих посетителей. Данная информация используется с целью выявления и решения технических проблем, для контроля корректности проводимых операций.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '3.4. Любая иная персональная информация не оговоренная выше (история покупок, используемые браузеры и операционные системы и т.д.) не подлежит умышленному разглашению, за исключением случаев, предусмотренных в п.п. 5.2. и 5.3. настоящей Политики конфиденциальности.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '4. Цели сбора персональной информации пользователя',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '4.1. Персональные данные Пользователя Администрация сайта может использовать в целях:',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '4.1.1. Установления с Пользователем обратной связи, включая направление уведомлений, запросов, касающихся использования сайта, оказания услуг, обработка запросов и заявок от Пользователя.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '4.1.2. Подтверждения достоверности и полноты персональных данных, предоставленных Пользователем.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '4.1.3. Уведомления Пользователя сайта о состоянии Заказа.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '4.1.4. Предоставления Пользователю эффективной клиентской и технической поддержки при возникновении проблем связанных с использованием сайта.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '5. Способы и сроки обработки персональной информации',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '5.1. Обработка персональных данных Пользователя осуществляется без ограничения срока, любым законным способом, в том числе в информационных системах персональных данных с использованием средств автоматизации или без использования таких средств.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '5.2. Пользователь соглашается с тем, что Администрация сайта вправе передавать персональные данные третьим лицам, в частности, курьерским службам, организациями почтовой связи, операторам электросвязи, исключительно в целях выполнения заявок Пользователя.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '5.3. Персональные данные Пользователя могут быть переданы уполномоченным органам государственной власти только по основаниям и в порядке, установленным действующим законодательством.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '6. Обязательства сторон',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.1. Пользователь обязуется:',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.1.1. Предоставить корректную и правдивую информацию о персональных данных, необходимую для пользования сайтом.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.1.2. Обновить или дополнить предоставленную информацию о персональных данных в случае изменения данной информации.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.1.3. Принимать меры для защиты доступа к своим конфиденциальным данным, хранящимся на сайте.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.2. Администрация сайта обязуется:',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.2.1. Использовать полученную информацию исключительно для целей, указанных в п. 4 настоящей Политики конфиденциальности.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.2.2. Не разглашать персональных данных Пользователя, за исключением п.п. 5.2. и 5.3. настоящей Политики Конфиденциальности.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '6.2.3. Осуществить блокирование персональных данных, относящихся к соответствующему Пользователю, с момента обращения или запроса Пользователя или его законного представителя либо уполномоченного органа по защите прав субъектов персональных данных на период проверки, в случае выявления неправомерных действий.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '7. Ответственность сторон',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.1. Администрация сайта несёт ответственность за умышленное разглашение Персональных данных Пользователя в соответствии с действующим законодательством, за исключением случаев, предусмотренных п.п. 5.2., 5.3. и 7.2. настоящей Политики Конфиденциальности.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.2. В случае утраты или разглашения Персональных данных Администрация сайта не несёт ответственность, если данная конфиденциальная информация:',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.2.1. Стала публичным достоянием до её утраты или разглашения.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.2.2. Была получена от третьей стороны до момента её получения Администрацией сайта.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.2.3. Была получена третьими лицами путем несанкционированного доступа к файлам сайта.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.2.4. Была разглашена с согласия Пользователя.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '7.3. Пользователь несет ответственность за правомерность, корректность и правдивость предоставленной Персональных данных в соответствии с действующим законодательством.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '8. Разрешение споров',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '8.1. До обращения в суд с иском по спорам, возникающим из отношений между Пользователем сайта и Администрацией сайта, обязательным является предъявление претензии (письменного предложения о добровольном урегулировании спора).',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '8.2. Получатель претензии в течение 30 календарных дней со дня получения претензии, письменно уведомляет заявителя претензии о результатах рассмотрения претензии.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '8.3. При недостижении соглашения спор будет передан на рассмотрение в судебный орган в соответствии с действующим законодательством.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '8.4. К настоящей Политике конфиденциальности и отношениям между Пользователем и Администрацией сайта применяется действующее законодательство.',
              ),
              SizedBox(height: 40),
              Text(
                style: agreementStyle,
                '9. Дополнительные условия',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '9.1. Администрация сайта вправе вносить изменения в настоящую Политику конфиденциальности без согласия Пользователя.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                '9.2. Новая Политика конфиденциальности вступает в силу с момента ее размещения на Сайте, если иное не предусмотрено новой редакцией Политики конфиденциальности.',
              ),
              SizedBox(height: 20),
              Text(
                style: agreementStyle,
                'Условия настоящего Соглашения для Сайта действуют и для Мобильного приложения (вне зависимости от платформы).',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
