import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  final List<ProductModel> pizzaList = [
    ProductModel(
        imagePath: 'assets/images/pizza/meat.png',
        title: 'Пицца "Мясная"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, конина, пепперони, свежие томаты, оливки, фирменные специи',
        weight: 'Вес: 600 гр.',
        price: 560),
    ProductModel(
        imagePath: 'assets/images/pizza/cheese.png',
        title: 'Пицца "Сырная"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сыр чеддер, сыр брынза, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 550),
    ProductModel(
        imagePath: 'assets/images/pizza/salami.png',
        title: 'Пицца "Салями"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, колбаски салями, перчик болгарский, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 500),
    ProductModel(
        imagePath: 'assets/images/pizza/pepperoni.png',
        title: 'Пицца\n"Пепперони"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, колбаски пепперони, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 500),
    ProductModel(
        imagePath: 'assets/images/pizza/premier.png',
        title: 'Пицца\n"Премьер"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, конина, жаренные грибочки, маринованные огурчики, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 550),
    ProductModel(
        imagePath: 'assets/images/pizza/chiken_cheese.png',
        title: 'Пицца\n"Курица-сыр"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, свежие томаты, оливки, фирменные специи',
        weight: 'Вес: 570 гр.',
        price: 480),
    ProductModel(
        imagePath: 'assets/images/pizza/hawaiia.png',
        title: 'Пицца\n"Гавайи"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, маринованный ананас, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 480),
    ProductModel(
        imagePath: 'assets/images/pizza/chili.png',
        title: 'Пицца\n"Чили"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, лук маринованный, перец халапеньо, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 480),
    ProductModel(
        imagePath: 'assets/images/pizza/sicilia.png',
        title: 'Пицца\n"Сицилийская"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, курица, перец болгарский, лук маринованный, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 480),
    ProductModel(
        imagePath: 'assets/images/pizza/ham_mushrooms.png',
        title: 'Пицца\n"Ветчина Грибы"',
        description:
            'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, жаренные грибочки, ветчина, фирменные специи',
        weight: 'Вес: 590 гр.',
        price: 480),
    ProductModel(
        imagePath: 'assets/images/pizza/margarita.png',
        title: 'Пицца\n"Маргарита"',
        description:
            'Соус итальянский, соус фирменные, соус песто, сыр моцарелла, свежие томаты, фирменные специи',
        weight: 'Вес: 560 гр.',
        price: 450),
  ];

  final List<ProductModel> friesList = [
    ProductModel(
        imagePath: 'assets/images/fries/small.png',
        title: 'Картофель-фри\n(Малая)',
        weight: 'Вес: 80 гр.',
        price: 99),
    ProductModel(
        imagePath: 'assets/images/fries/big.png',
        title: 'Картофель-фри\n(Большая)',
        weight: 'Вес: 150 гр.',
        price: 159),
    ProductModel(
        imagePath: 'assets/images/fries/rustic.png',
        title: 'Картофель\nпо-деревенски',
        weight: 'Вес: 150 гр.',
        price: 139),
    ProductModel(
      imagePath: 'assets/images/fries/onion.png',
      title: 'Луковые кольца\n3 штуки',
      weight: 'Вес: 36 гр.',
      price: 99,
    ),
    ProductModel(
      imagePath: 'assets/images/fries/onion.png',
      title: 'Луковые кольца\n5 штук',
      weight: 'Вес: 50 гр.',
      price: 119,
    ),
    ProductModel(
      imagePath: 'assets/images/fries/onion.png',
      title: 'Луковые кольца\n7 штук',
      weight: 'Вес: 84 гр.',
      price: 139,
    ),
    ProductModel(
      imagePath: 'assets/images/fries/bbq.png',
      title: 'Соус Heinz,\nбарбекью',
      weight: 'Объем: 25 мл.',
      price: 45,
    ),
    ProductModel(
      imagePath: 'assets/images/fries/cheese.png',
      title: 'Соус Heinz,\nсырный',
      weight: 'Объем: 25 мл.',
      price: 45,
    ),
    ProductModel(
      imagePath: 'assets/images/fries/tomato.png',
      title: 'Соус Heinz,\nтоматный',
      weight: 'Объем: 25 мл.',
      price: 45,
    ),
  ];

  final List<ProductModel> drinksList = [
    ProductModel(
        imagePath: 'assets/images/drinks/cranberry.png',
        title: 'Морс\nклюквенный',
        weight: 'Объем: 500 мл.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/drinks/cranberry_small.png',
        title: 'Морс\nклюквенный',
        weight: 'Объем: 230 мл.',
        price: 59),
    ProductModel(
        imagePath: 'assets/images/drinks/seabuckthorn.png',
        title: 'Морс\nоблепиховый',
        weight: 'Объем: 500 мл.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/drinks/seabuckthorn_small.png',
        title: 'Морс\nоблепиховый',
        weight: 'Объем: 230 мл.',
        price: 59),
    ProductModel(
        imagePath: 'assets/images/drinks/currant.png',
        title: 'Морс\nсмородиновый',
        weight: 'Объем: 500 мл.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/drinks/currant_small.png',
        title: 'Морс\nсмородиновый',
        weight: 'Объем: 230 мл.',
        price: 59),
    ProductModel(
        imagePath: 'assets/images/drinks/pulpy.png',
        title: '"Pulpy",\nапельсин',
        weight: 'Объем: 450 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/drinks/cola.png',
        title: '"Добрый"\nCola',
        weight: 'Объем: 500 мл.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/drinks/sprite.png',
        title: '"Добрый"\nSprite',
        weight: 'Объем: 500 мл.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/drinks/fanta.png',
        title: '"Добрый"\nFanta',
        weight: 'Объем: 500 мл.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/drinks/cola_033.png',
        title: '"Добрый"\nCola',
        weight: 'Объем: 330 мл.',
        price: 109),
    ProductModel(
        imagePath: 'assets/images/drinks/sprite_033.png',
        title: '"Добрый"\nSprite',
        weight: 'Объем: 330 мл.',
        price: 109),
    ProductModel(
        imagePath: 'assets/images/drinks/fanta_033.png',
        title: '"Добрый"\nFanta',
        weight: 'Объем: 330 мл.',
        price: 109),
    ProductModel(
        imagePath: 'assets/images/drinks/bona_gas.png',
        title: '"Bona Aqua",\nгазированная',
        weight: 'Объем: 200 мл.',
        price: 79),
    ProductModel(
        imagePath: 'assets/images/drinks/bona.png',
        title: '"Bona Aqua",\nнегазированная',
        weight: 'Объем: 200 мл.',
        price: 79),
    ProductModel(
        imagePath: 'assets/images/drinks/tea.png',
        title: '"Rich", зеленый\nчай',
        weight: 'Объем: 500 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/drinks/mango.png',
        title: '"Rich", зеленый\n чай с манго',
        weight: 'Объем: 500 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/drinks/lemon.png',
        title: '"Rich", черный\nчай с лимоном',
        weight: 'Объем: 500 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/drinks/peach.png',
        title: '"Rich", черный\nчай с персиком',
        weight: 'Объем: 500 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/drinks/apple.png',
        title: 'Сок "Добрый",\nяблоко',
        weight: 'Объем: 300 мл.',
        price: 99),
    ProductModel(
        imagePath: 'assets/images/drinks/multifruit.png',
        title: 'Сок "Добрый",\nмультифрукт',
        weight: 'Объем: 500 мл.',
        price: 99),
    ProductModel(
        imagePath: 'assets/images/drinks/orange.png',
        title: 'Сок "Добрый",\nапельсин',
        weight: 'Объем: 300 мл.',
        price: 99),
  ];

  final List<ProductModel> cocktailsList = [
    ProductModel(
        imagePath: 'assets/images/cocktails/bananaORmango.png',
        title: 'Молочный\nкоктейль,\nманго',
        description: 'Молоко, мороженое, сироп манго',
        weight: 'Объем: 300 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/cocktails/bananaORmango.png',
        title: 'Молочный\nкоктейль,\nбанан',
        description: 'Молоко, мороженое, сироп банановый',
        weight: 'Объем: 300 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/cocktails/chocolate.png',
        title: 'Молочный\nкоктейль,\nшоколад',
        description: 'Молоко, мороженое, сироп шоколадный',
        weight: 'Объем: 300 мл.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/cocktails/strawberry.png',
        title: 'Молочный\nкоктейль,\nклубника',
        description: 'Молоко, мороженое, сироп клубничный',
        weight: 'Объем: 300 мл.',
        price: 129),
  ];

  final List<ProductModel> shawarmaList = [
    ProductModel(
        imagePath: 'assets/images/shawarma/ai_fresh.png',
        title: 'Ай-фреш',
        description:
            'Курица с мангала, помидоры свежие, маринованные огурцы, сыр Чеддер, фирменный соус, пшеничная тортилья.',
        weight: 'Вес: 170 гр.',
        price: 189),
    ProductModel(
        imagePath: 'assets/images/shawarma/caesar.png',
        title: 'Шаурма \nЦезарь ',
        description:
            'Сочная курица, пекинская капуста, помидоры, сыр Голландский, соус Цезарь, лаваш.',
        weight: 'Вес: 280 гр.',
        price: 299),
    ProductModel(
        imagePath: 'assets/images/shawarma/greek.png',
        title: 'Шаурма Греческая',
        description:
            'Сочная курица, пекинская капуста, огурцы, помидоры, лук красный, болгарский перец, сыр Брынза, фирменный соус, лаваш.',
        weight: 'Вес: 310 гр.',
        price: 369),
    ProductModel(
        imagePath: 'assets/images/shawarma/rustic.png',
        title: 'Шаурма Деревенская ',
        description:
            'Сочная курица, картофель фри, маринованный красный лук, огурцы маринованные, грибы жареные, Моцарелла, соус Цезарь, лаваш.',
        weight: 'Вес: 300 гр.',
        price: 269),
    ProductModel(
        imagePath: 'assets/images/shawarma/bbq.png',
        title: 'Шаурма с говядиной BBQ ',
        description:
            'Говядина с мангала, салат капустный (капуста, морковь), огурцы, помидоры, соус Цезарь, соус Барбекю, лаваш.',
        weight: 'Вес: 300 гр.',
        price: 339),
    ProductModel(
        imagePath: 'assets/images/shawarma/classic.png',
        title: 'Шаурма Классическая',
        description:
            'Сочная курица, салат капустный (капуста, морковь), огурцы, помидоры, фирменный соус, кетчуп, лаваш.',
        weight: 'Вес: 300 гр.',
        price: 249),
    ProductModel(
        imagePath: 'assets/images/shawarma/vegan.png',
        title: 'Шаурма Вегетарианская',
        description:
            'Салат капустный (капуста, морковь), огурцы, помидоры, фирменный соус, лаваш.',
        weight: 'Вес: 230 гр.',
        price: 199),
  ];

  final List<ProductModel> burgersList = [
    ProductModel(
        imagePath: 'assets/images/burgers/fresh.png',
        title: 'Фреш бургер',
        description:
            'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, сочная говяжья котлетка',
        weight: 'Вес: ? гр.',
        price: 219),
    ProductModel(
        imagePath: 'assets/images/burgers/fresh_double.png',
        title: 'Двойной\nФреш бургер',
        description:
            'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, две сочные говяжьи котлетки',
        weight: 'Вес: ? гр.',
        price: 289),
    ProductModel(
        imagePath: 'assets/images/burgers/cheese.png',
        title: 'Чизбургер',
        description:
            'Ароматная булочка, сочная курино - говяжья котлета, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
        weight: 'Вес: ? гр.',
        price: 129),
    ProductModel(
        imagePath: 'assets/images/burgers/cheese_double.png',
        title: 'Двойной\nЧизбургер',
        description:
            'Ароматная булочка, 2 сочные курино - говяжьи котлеты, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
        weight: 'Вес: ? гр.',
        price: 209),
    ProductModel(
        imagePath: 'assets/images/burgers/hamburger.png',
        title: 'Гамбургер',
        description:
            'Ароматная булочка, сочная курино - говяжья котлета, маринованные огурчики, репчатый лук, фирменный соус',
        weight: 'Вес: ? гр.',
        price: 139),
    ProductModel(
        imagePath: 'assets/images/burgers/hamburger_double.png',
        title: 'Двойной\nГамбургер',
        description:
            'Ароматная булочка, 2 сочные курино - говяжьи котлеты, маринованные огурчики, репчатый лук, фирменный соус',
        weight: 'Вес: ? гр.',
        price: 189),
    ProductModel(
        imagePath: 'assets/images/burgers/chiken.png',
        title: 'Чикен бургер',
        description:
            'Ароматная булочка с кунжутом, фирменный соус, репчатый лук, свежие томаты, сыр чеддер, салат айсберг, сочная куриная котлетка',
        weight: 'Вес: ? гр.',
        price: 299),
  ];

  final List<ProductModel> donersList = [
    ProductModel(
        imagePath: 'assets/images/doners/chiken.png',
        title: 'Дёнер\nс курицей',
        description:
            'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из курочки.',
        weight: 'Вес: 310 гр.',
        price: 259),
    ProductModel(
        imagePath: 'assets/images/doners/beef.png',
        title: 'Дёнер\nс говядиной',
        description:
            'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из говядины.',
        weight: 'Вес: 310 гр.',
        price: 359),
    ProductModel(
        imagePath: 'assets/images/doners/bosna.png',
        title: 'Босна кебаб',
        description:
            'Сочный люля-кебаб, хрустящая булочка, маринованный огурец, свежий помидор, фирменный соус, маринованный лук.',
        weight: 'Вес: 390 гр.',
        price: 399),
  ];

  final List<ProductModel> dishesList = [
    ProductModel(
        imagePath: 'assets/images/dishes/kebab.png',
        title: 'Люля\nКебаб',
        description:
            'Фарш курино-говяжий (150 гр.), лук с зеленью (16 гр.), томатный соус (30 гр.).',
        price: 269),
    ProductModel(
        imagePath: 'assets/images/dishes/beef.png',
        title: 'Шашлык из\nговядины',
        description:
            'Говядина(150 гр.), лук с зеленью (16 гр.), томатный соус (30 гр.).',
        price: 399),
    ProductModel(
        imagePath: 'assets/images/dishes/chiken.png',
        title: 'Шашлык из\nкурицы',
        description:
            'Филе куриной грудки (170 гр.), лук с зеленью (16 гр.), томатный соус (30 гр.).',
        price: 299),
    ProductModel(
        imagePath: 'assets/images/dishes/pilaf.png',
        title: 'Плов с\nговядиной',
        description:
            'Рис, отборная говядина, морковь два вида, лук, нут, изюм, специи.',
        weight: 'Вес:290 гр.',
        price: 290),
  ];

  final List<ProductModel> saladsList = [
    ProductModel(
        imagePath: 'assets/images/salads/caesar.png',
        title: 'Салат\n"Цезарь"',
        description:
            'Филе куриной грудки, помидорки черри, пекинская капуста, сыр Пармезан, пряные гренки, фирменный соус Цезарь',
        weight: 'Вес:120 гр.',
        price: 199),
    ProductModel(
        imagePath: 'assets/images/salads/greek.png',
        title: 'Салат\n"Греческий"',
        description:
            'Пекинская капуста, болгарский перец, свежие огурчики, свежие томаты, маслины, сыр Фета, фирменный соус',
        weight: 'Вес:140 гр.',
        price: 199),
  ];

  final List<ProductModel> bakeryList = [
    ProductModel(
        imagePath: 'assets/images/bakery/sausage.png',
        title: 'Сосиска в тесте',
        description: 'Сосиска, тесто бездрожжевое ',
        weight: 'Вес:100 гр.',
        price: 65),
    ProductModel(
        imagePath: 'assets/images/bakery/cheburek.png',
        title: 'Чебурек',
        description: 'Фарш курица-говядина, лук, тесто.',
        weight: 'Вес:130 гр.',
        price: 80),
    ProductModel(
        imagePath: 'assets/images/bakery/beef.png',
        title: 'Самса,\nговядина',
        description: 'Говядина рубленная, лук, специи, тесто слоёное',
        weight: 'Вес:180 гр.',
        price: 90),
    ProductModel(
        imagePath: 'assets/images/bakery/chiken.png',
        title: 'Самса,\nкурица',
        description: 'Филе куриной грудки, лук, специи, тесто слоёное',
        weight: 'Вес:180 гр.',
        price: 85),
    ProductModel(
        imagePath: 'assets/images/bakery/flatbread.png',
        title: 'Лепешка\nиз тандра',
        weight: 'Вес:130 гр.',
        price: 45),
  ];

  final List<ProductModel> dessertsList = [
    ProductModel(
        imagePath: 'assets/images/desserts/pai.png',
        title: 'Пай,\nфруктовый',
        description:
            'Тесто песочное, свежие фрукты и ягоды, джем, взбитые сливки',
        weight: 'Вес:? гр.',
        price: 149),
    ProductModel(
        imagePath: 'assets/images/desserts/snickers.png',
        title: 'Пай,\n"Snickers"',
        description:
            'Песочное тесто, сливки, глазурь, арахис, шоколад, сгущёнка варёная, карамель, какао',
        weight: 'Вес:100 гр.',
        price: 109),
    ProductModel(
        imagePath: 'assets/images/desserts/coconut.png',
        title: 'Пай,\nмалина-кокос',
        description:
            'Песочное тесто, сливки, малиновый конфитюр, глазурь, сыр творожный, кокосовая стружка',
        weight: 'Вес:100 гр.',
        price: 109),
    ProductModel(
        imagePath: 'assets/images/desserts/muffin.png',
        title: 'Маффин\nшоколадный',
        description: 'Какао, молоко, сливочное масло',
        weight: 'Вес: 90 гр.',
        price: 79),
    ProductModel(
        imagePath: 'assets/images/desserts/baklava.png',
        title: 'Пахлава,\nарахис',
        description: 'Орехи, мёд, тесто слоёное',
        weight: 'Вес: ? гр.',
        price: 79),
    ProductModel(
        imagePath: 'assets/images/desserts/baklava.png',
        title: 'Пахлава,\nгрецкий орех',
        description: 'Орехи, мёд, тесто слоёное',
        weight: 'Вес: ? гр.',
        price: 89),
    ProductModel(
        imagePath: 'assets/images/desserts/red.png',
        title: 'Красный \nбархат',
        description: 'Мука, сахар, яйца куриные. ',
        weight: 'Вес: 100 гр.',
        price: 119),
    ProductModel(
        imagePath: 'assets/images/desserts/black.png',
        title: 'Тирамису',
        description: 'Сыр сливочный, кофе, куриные яйца, бисквит, какао.',
        weight: 'Вес: 100 гр.',
        price: 119),
  ];
}

// List<ProductModel> pizzaList = [
//   ProductModel(
//       imagePath: 'assets/images/pizza/meat.png',
//       textTitle: 'Пицца\n"Мясная"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, конина, пепперони, свежие томаты, оливки, фирменные специи',
//       textWeight: 'Вес: 600 гр.',
//       textPrice: 560),
//   ProductModel(
//       imagePath: 'assets/images/pizza/cheese.png',
//       textTitle: 'Пицца\n"Сырная"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сыр чеддер, сыр брынза, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 550),
//   ProductModel(
//       imagePath: 'assets/images/pizza/salami.png',
//       textTitle: 'Пицца\n"Салями"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, колбаски салями, перчик болгарский, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 500),
//   ProductModel(
//       imagePath: 'assets/images/pizza/pepperoni.png',
//       textTitle: 'Пицца\n"Пепперони"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, колбаски пепперони, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 500),
//   ProductModel(
//       imagePath: 'assets/images/pizza/premier.png',
//       textTitle: 'Пицца\n"Премьер"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, конина, жаренные грибочки, маринованные огурчики, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 550),
//   ProductModel(
//       imagePath: 'assets/images/pizza/chiken_cheese.png',
//       textTitle: 'Пицца\n"Курица-сыр"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, свежие томаты, оливки, фирменные специи',
//       textWeight: 'Вес: 570 гр.',
//       textPrice: 480),
//   ProductModel(
//       imagePath: 'assets/images/pizza/hawaiia.png',
//       textTitle: 'Пицца\n"Гавайи"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, маринованный ананас, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 480),
//   ProductModel(
//       imagePath: 'assets/images/pizza/chili.png',
//       textTitle: 'Пицца\n"Чили"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, сочная курочка, лук маринованный, перец халапеньо, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 480),
//   ProductModel(
//       imagePath: 'assets/images/pizza/sicilia.png',
//       textTitle: 'Пицца\n"Сицилийская"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, курица, перец болгарский, лук маринованный, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 480),
//   ProductModel(
//       imagePath: 'assets/images/pizza/ham_mushrooms.png',
//       textTitle: 'Пицца\n"Ветчина Грибы"',
//       textDescription:
//           'Соус итальянский, соус фирменный, соус песто, сыр моцарелла, жаренные грибочки, ветчина, фирменные специи',
//       textWeight: 'Вес: 590 гр.',
//       textPrice: 480),
//   ProductModel(
//       imagePath: 'assets/images/pizza/margarita.png',
//       textTitle: 'Пицца\n"Маргарита"',
//       textDescription:
//           'Соус итальянский, соус фирменные, соус песто, сыр моцарелла, свежие томаты, фирменные специи',
//       textWeight: 'Вес: 560 гр.',
//       textPrice: 450),
// ];

// List<ProductModel> friesList = [
//   ProductModel(
//       imagePath: 'assets/images/fries/small.png',
//       textTitle: 'Картофель-фри\n(Малая)',
//       textWeight: 'Вес: 80 гр.',
//       textPrice: 99),
//   ProductModel(
//       imagePath: 'assets/images/fries/big.png',
//       textTitle: 'Картофель-фри\n(Большая)',
//       textWeight: 'Вес: 150 гр.',
//       textPrice: 159),
//   ProductModel(
//       imagePath: 'assets/images/fries/rustic.png',
//       textTitle: 'Картофель\nпо-деревенски',
//       textWeight: 'Вес: 150 гр.',
//       textPrice: 139),
//   ProductModel(
//     imagePath: 'assets/images/fries/onion.png',
//     textTitle: 'Луковые кольца\n3 штуки',
//     textWeight: 'Вес: 36 гр.',
//     textPrice: 99,
//   ),
//   ProductModel(
//     imagePath: 'assets/images/fries/onion.png',
//     textTitle: 'Луковые кольца\n5 штук',
//     textWeight: 'Вес: 50 гр.',
//     textPrice: 119,
//   ),
//   ProductModel(
//     imagePath: 'assets/images/fries/onion.png',
//     textTitle: 'Луковые кольца\n7 штук',
//     textWeight: 'Вес: 84 гр.',
//     textPrice: 139,
//   ),
//   ProductModel(
//     imagePath: 'assets/images/fries/bbq.png',
//     textTitle: 'Соус Heinz,\nбарбекью',
//     textWeight: 'Объем: 25 мл.',
//     textPrice: 45,
//   ),
//   ProductModel(
//     imagePath: 'assets/images/fries/cheese.png',
//     textTitle: 'Соус Heinz,\nсырный',
//     textWeight: 'Объем: 25 мл.',
//     textPrice: 45,
//   ),
//   ProductModel(
//     imagePath: 'assets/images/fries/tomato.png',
//     textTitle: 'Соус Heinz,\nтоматный',
//     textWeight: 'Объем: 25 мл.',
//     textPrice: 45,
//   ),
// ];

// List<ProductModel> drinksList = [
//   ProductModel(
//       imagePath: 'assets/images/drinks/cranberry.png',
//       textTitle: 'Морс\nклюквенный',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/drinks/cranberry_small.png',
//       textTitle: 'Морс\nклюквенный',
//       textWeight: 'Объем: 230 мл.',
//       textPrice: 59),
//   ProductModel(
//       imagePath: 'assets/images/drinks/seabuckthorn.png',
//       textTitle: 'Морс\nоблепиховый',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/drinks/seabuckthorn_small.png',
//       textTitle: 'Морс\nоблепиховый',
//       textWeight: 'Объем: 230 мл.',
//       textPrice: 59),
//   ProductModel(
//       imagePath: 'assets/images/drinks/currant.png',
//       textTitle: 'Морс\nсмородиновый',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/drinks/currant_small.png',
//       textTitle: 'Морс\nсмородиновый',
//       textWeight: 'Объем: 230 мл.',
//       textPrice: 59),
//   ProductModel(
//       imagePath: 'assets/images/drinks/pulpy.png',
//       textTitle: '"Pulpy",\nапельсин',
//       textWeight: 'Объем: 450 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/drinks/cola.png',
//       textTitle: '"Добрый"\nCola',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/drinks/sprite.png',
//       textTitle: '"Добрый"\nSprite',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/drinks/fanta.png',
//       textTitle: '"Добрый"\nFanta',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/drinks/cola_033.png',
//       textTitle: '"Добрый"\nCola',
//       textWeight: 'Объем: 330 мл.',
//       textPrice: 109),
//   ProductModel(
//       imagePath: 'assets/images/drinks/sprite_033.png',
//       textTitle: '"Добрый"\nSprite',
//       textWeight: 'Объем: 330 мл.',
//       textPrice: 109),
//   ProductModel(
//       imagePath: 'assets/images/drinks/fanta_033.png',
//       textTitle: '"Добрый"\nFanta',
//       textWeight: 'Объем: 330 мл.',
//       textPrice: 109),
//   ProductModel(
//       imagePath: 'assets/images/drinks/bona_gas.png',
//       textTitle: '"Bona Aqua",\nгазированная',
//       textWeight: 'Объем: 200 мл.',
//       textPrice: 79),
//   ProductModel(
//       imagePath: 'assets/images/drinks/bona.png',
//       textTitle: '"Bona Aqua",\nнегазированная',
//       textWeight: 'Объем: 200 мл.',
//       textPrice: 79),
//   ProductModel(
//       imagePath: 'assets/images/drinks/tea.png',
//       textTitle: '"Rich", зеленый\nчай',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/drinks/mango.png',
//       textTitle: '"Rich", зеленый\n чай с манго',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/drinks/lemon.png',
//       textTitle: '"Rich", черный\nчай с лимоном',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/drinks/peach.png',
//       textTitle: '"Rich", черный\nчай с персиком',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/drinks/apple.png',
//       textTitle: 'Сок "Добрый",\nяблоко',
//       textWeight: 'Объем: 300 мл.',
//       textPrice: 99),
//   ProductModel(
//       imagePath: 'assets/images/drinks/multifruit.png',
//       textTitle: 'Сок "Добрый",\nмультифрукт',
//       textWeight: 'Объем: 500 мл.',
//       textPrice: 99),
//   ProductModel(
//       imagePath: 'assets/images/drinks/orange.png',
//       textTitle: 'Сок "Добрый",\nапельсин',
//       textWeight: 'Объем: 300 мл.',
//       textPrice: 99),
// ];

// List<ProductModel> cocktailsList = [
//   ProductModel(
//       imagePath: 'assets/images/cocktails/bananaORmango.png',
//       textTitle: 'Молочный\nкоктейль,\nманго',
//       textDescription: 'Молоко, мороженое, сироп манго',
//       textWeight: 'Объем: 300 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/cocktails/bananaORmango.png',
//       textTitle: 'Молочный\nкоктейль,\nбанан',
//       textDescription: 'Молоко, мороженое, сироп банановый',
//       textWeight: 'Объем: 300 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/cocktails/chocolate.png',
//       textTitle: 'Молочный\nкоктейль,\nшоколад',
//       textDescription: 'Молоко, мороженое, сироп шоколадный',
//       textWeight: 'Объем: 300 мл.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/cocktails/strawberry.png',
//       textTitle: 'Молочный\nкоктейль,\nклубника',
//       textDescription: 'Молоко, мороженое, сироп клубничный',
//       textWeight: 'Объем: 300 мл.',
//       textPrice: 129),
// ];

// List<ProductModel> shawarmaList = [
//   ProductModel(
//       imagePath: 'assets/images/shawarma/ai_fresh.png',
//       textTitle: 'Ай-фреш',
//       textDescription:
//           'Курица с мангала, помидоры свежие, маринованные огурцы, сыр Чеддер, фирменный соус, пшеничная тортилья.',
//       textWeight: 'Вес: 170 гр.',
//       textPrice: 189),
//   ProductModel(
//       imagePath: 'assets/images/shawarma/caesar.png',
//       textTitle: 'Шаурма \nЦезарь ',
//       textDescription:
//           'Сочная курица, пекинская капуста, помидоры, сыр Голландский, соус Цезарь, лаваш.',
//       textWeight: 'Вес: 280 гр.',
//       textPrice: 299),
//   ProductModel(
//       imagePath: 'assets/images/shawarma/greek.png',
//       textTitle: 'Шаурма Греческая',
//       textDescription:
//           'Сочная курица, пекинская капуста, огурцы, помидоры, лук красный, болгарский перец, сыр Брынза, фирменный соус, лаваш.',
//       textWeight: 'Вес: 310 гр.',
//       textPrice: 369),
//   ProductModel(
//       imagePath: 'assets/images/shawarma/rustic.png',
//       textTitle: 'Шаурма Деревенская ',
//       textDescription:
//           'Сочная курица, картофель фри, маринованный красный лук, огурцы маринованные, грибы жареные, Моцарелла, соус Цезарь, лаваш.',
//       textWeight: 'Вес: 300 гр.',
//       textPrice: 269),
//   ProductModel(
//       imagePath: 'assets/images/shawarma/bbq.png',
//       textTitle: 'Шаурма с говядиной BBQ ',
//       textDescription:
//           'Говядина с мангала, салат капустный (капуста, морковь), огурцы, помидоры, соус Цезарь, соус Барбекю, лаваш.',
//       textWeight: 'Вес: 300 гр.',
//       textPrice: 339),
//   ProductModel(
//       imagePath: 'assets/images/shawarma/classic.png',
//       textTitle: 'Шаурма Классическая',
//       textDescription:
//           'Сочная курица, салат капустный (капуста, морковь), огурцы, помидоры, фирменный соус, кетчуп, лаваш.',
//       textWeight: 'Вес: 300 гр.',
//       textPrice: 249),
//   ProductModel(
//       imagePath: 'assets/images/shawarma/vegan.png',
//       textTitle: 'Шаурма Вегетарианская',
//       textDescription:
//           'Салат капустный (капуста, морковь), огурцы, помидоры, фирменный соус, лаваш.',
//       textWeight: 'Вес: 230 гр.',
//       textPrice: 199),
// ];

// List<ProductModel> burgersList = [
//   ProductModel(
//       imagePath: 'assets/images/burgers/fresh.png',
//       textTitle: 'Фреш бургер',
//       textDescription:
//           'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, сочная говяжья котлетка',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 219),
//   ProductModel(
//       imagePath: 'assets/images/burgers/fresh_double.png',
//       textTitle: 'Двойной\nФреш бургер',
//       textDescription:
//           'Ароматная булочка с кунжутом, соус фирменный, лук репчатый, огурчики маринованные, свежие томаты, сыр чеддер, салат айсберг, две сочные говяжьи котлетки',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 289),
//   ProductModel(
//       imagePath: 'assets/images/burgers/cheese.png',
//       textTitle: 'Чизбургер',
//       textDescription:
//           'Ароматная булочка, сочная курино - говяжья котлета, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 129),
//   ProductModel(
//       imagePath: 'assets/images/burgers/cheese_double.png',
//       textTitle: 'Двойной\nЧизбургер',
//       textDescription:
//           'Ароматная булочка, 2 сочные курино - говяжьи котлеты, сыр Чеддер, маринованные огурчики, репчатый лук, фирменный соус',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 209),
//   ProductModel(
//       imagePath: 'assets/images/burgers/hamburger.png',
//       textTitle: 'Гамбургер',
//       textDescription:
//           'Ароматная булочка, сочная курино - говяжья котлета, маринованные огурчики, репчатый лук, фирменный соус',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 139),
//   ProductModel(
//       imagePath: 'assets/images/burgers/hamburger_double.png',
//       textTitle: 'Двойной\nГамбургер',
//       textDescription:
//           'Ароматная булочка, 2 сочные курино - говяжьи котлеты, маринованные огурчики, репчатый лук, фирменный соус',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 189),
//   ProductModel(
//       imagePath: 'assets/images/burgers/chiken.png',
//       textTitle: 'Чикен бургер',
//       textDescription:
//           'Ароматная булочка с кунжутом, фирменный соус, репчатый лук, свежие томаты, сыр чеддер, салат айсберг, сочная куриная котлетка',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 299),
// ];

// List<ProductModel> donersList = [
//   ProductModel(
//       imagePath: 'assets/images/doners/chiken.png',
//       textTitle: 'Дёнер\nс курицей',
//       textDescription:
//           'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из курочки.',
//       textWeight: 'Вес: 310 гр.',
//       textPrice: 259),
//   ProductModel(
//       imagePath: 'assets/images/doners/beef.png',
//       textTitle: 'Дёнер\nс говядиной',
//       textDescription:
//           'Хрустящая булочка, болгарский перчик, свежие томаты, пекинская капуста, репчатый лук, зелень, чили свежий, 2 фирменных соуса, сочный шашлык из говядины.',
//       textWeight: 'Вес: 310 гр.',
//       textPrice: 359),
//   ProductModel(
//       imagePath: 'assets/images/doners/bosna.png',
//       textTitle: 'Босна кебаб',
//       textDescription:
//           'Сочный люля-кебаб, хрустящая булочка, маринованный огурец, свежий помидор, фирменный соус, маринованный лук.',
//       textWeight: 'Вес: 390 гр.',
//       textPrice: 399),
// ];

// List<ProductModel> dishesList = [
//   ProductModel(
//       imagePath: 'assets/images/dishes/kebab.png',
//       textTitle: 'Люля\nКебаб',
//       textDescription:
//           'Фарш курино-говяжий (150 гр.), лук с зеленью (16 гр.), томатный соус (30 гр.).',
//       textPrice: 269),
//   ProductModel(
//       imagePath: 'assets/images/dishes/beef.png',
//       textTitle: 'Шашлык из\nговядины',
//       textDescription:
//           'Говядина(150 гр.), лук с зеленью (16 гр.), томатный соус (30 гр.).',
//       textPrice: 399),
//   ProductModel(
//       imagePath: 'assets/images/dishes/chiken.png',
//       textTitle: 'Шашлык из\nкурицы',
//       textDescription:
//           'Филе куриной грудки (170 гр.), лук с зеленью (16 гр.), томатный соус (30 гр.).',
//       textPrice: 299),
//   ProductModel(
//       imagePath: 'assets/images/dishes/pilaf.png',
//       textTitle: 'Плов с\nговядиной',
//       textDescription:
//           'Рис, отборная говядина, морковь два вида, лук, нут, изюм, специи.',
//       textWeight: 'Вес:290 гр.',
//       textPrice: 290),
// ];

// List<ProductModel> saladsList = [
//   ProductModel(
//       imagePath: 'assets/images/salads/caesar.png',
//       textTitle: 'Салат\n"Цезарь"',
//       textDescription:
//           'Филе куриной грудки, помидорки черри, пекинская капуста, сыр Пармезан, пряные гренки, фирменный соус Цезарь',
//       textWeight: 'Вес:120 гр.',
//       textPrice: 199),
//   ProductModel(
//       imagePath: 'assets/images/salads/greek.png',
//       textTitle: 'Салат\n"Греческий"',
//       textDescription:
//           'Пекинская капуста, болгарский перец, свежие огурчики, свежие томаты, маслины, сыр Фета, фирменный соус',
//       textWeight: 'Вес:140 гр.',
//       textPrice: 199),
// ];

// List<ProductModel> bakeryList = [
//   ProductModel(
//       imagePath: 'assets/images/bakery/sausage.png',
//       textTitle: 'Сосиска в тесте',
//       textDescription: 'Сосиска, тесто бездрожжевое ',
//       textWeight: 'Вес:100 гр.',
//       textPrice: 65),
//   ProductModel(
//       imagePath: 'assets/images/bakery/cheburek.png',
//       textTitle: 'Чебурек',
//       textDescription: 'Фарш курица-говядина, лук, тесто.',
//       textWeight: 'Вес:130 гр.',
//       textPrice: 80),
//   ProductModel(
//       imagePath: 'assets/images/bakery/beef.png',
//       textTitle: 'Самса,\nговядина',
//       textDescription: 'Говядина рубленная, лук, специи, тесто слоёное',
//       textWeight: 'Вес:180 гр.',
//       textPrice: 90),
//   ProductModel(
//       imagePath: 'assets/images/bakery/chiken.png',
//       textTitle: 'Самса,\nкурица',
//       textDescription: 'Филе куриной грудки, лук, специи, тесто слоёное',
//       textWeight: 'Вес:180 гр.',
//       textPrice: 85),
//   ProductModel(
//       imagePath: 'assets/images/bakery/flatbread.png',
//       textTitle: 'Лепешка\nиз тандра',
//       textWeight: 'Вес:130 гр.',
//       textPrice: 45),
// ];

// List<ProductModel> dessertsList = [
//   ProductModel(
//       imagePath: 'assets/images/desserts/pai.png',
//       textTitle: 'Пай,\nфруктовый',
//       textDescription:
//           'Тесто песочное, свежие фрукты и ягоды, джем, взбитые сливки',
//       textWeight: 'Вес:? гр.',
//       textPrice: 149),
//   ProductModel(
//       imagePath: 'assets/images/desserts/snickers.png',
//       textTitle: 'Пай,\n"Snickers"',
//       textDescription:
//           'Песочное тесто, сливки, глазурь, арахис, шоколад, сгущёнка варёная, карамель, какао',
//       textWeight: 'Вес:100 гр.',
//       textPrice: 109),
//   ProductModel(
//       imagePath: 'assets/images/desserts/coconut.png',
//       textTitle: 'Пай,\nмалина-кокос',
//       textDescription:
//           'Песочное тесто, сливки, малиновый конфитюр, глазурь, сыр творожный, кокосовая стружка',
//       textWeight: 'Вес:100 гр.',
//       textPrice: 109),
//   ProductModel(
//       imagePath: 'assets/images/desserts/muffin.png',
//       textTitle: 'Маффин\nшоколадный',
//       textDescription: 'Какао, молоко, сливочное масло',
//       textWeight: 'Вес: 90 гр.',
//       textPrice: 79),
//   ProductModel(
//       imagePath: 'assets/images/desserts/baklava.png',
//       textTitle: 'Пахлава,\nарахис',
//       textDescription: 'Орехи, мёд, тесто слоёное',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 79),
//   ProductModel(
//       imagePath: 'assets/images/desserts/baklava.png',
//       textTitle: 'Пахлава,\nгрецкий орех',
//       textDescription: 'Орехи, мёд, тесто слоёное',
//       textWeight: 'Вес: ? гр.',
//       textPrice: 89),
//   ProductModel(
//       imagePath: 'assets/images/desserts/red.png',
//       textTitle: 'Красный \nбархат',
//       textDescription: 'Мука, сахар, яйца куриные. ',
//       textWeight: 'Вес: 100 гр.',
//       textPrice: 119),
//   ProductModel(
//       imagePath: 'assets/images/desserts/black.png',
//       textTitle: 'Тирамису',
//       textDescription: 'Сыр сливочный, кофе, куриные яйца, бисквит, какао.',
//       textWeight: 'Вес: 100 гр.',
//       textPrice: 119),
// ];
