import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/data.dart';

class FullMenu extends StatelessWidget {
  const FullMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return SingleChildScrollView(
      controller: controller,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TitleForCards(title: 'Пицца'),
            GridViewForCards(
              card: pizzaCards,
              myHeight: 595,
            ),
            TitleForCards(title: 'Фри-меню'),
            GridViewForCards(
              card: friesCards,
              myHeight: 330,
            ),
            TitleForCards(title: 'Напитки'),
            GridViewForCards(
              card: drinksCards,
              myHeight: 370,
            ),
            TitleForCards(title: 'Молочные коктейли'),
            GridViewForCards(
              card: cocktailsCards,
              myHeight: 440,
            ),
            TitleForCards(title: 'Шаурма'),
            GridViewForCards(
              card: shawarmaCards,
              myHeight: 485,
            ),
            TitleForCards(title: 'Бургеры'),
            GridViewForCards(
              card: burgersCards,
              myHeight: 580,
            ),
            TitleForCards(title: 'Дёнер'),
            GridViewForCards(
              card: donersCards,
              myHeight: 590,
            ),
            TitleForCards(title: 'Горячие блюда'),
            GridViewForCards(
              card: dishesCards,
              myHeight: 480,
            ),
            TitleForCards(title: 'Салаты'),
            GridViewForCards(
              card: saladsCards,
              myHeight: 520,
            ),
            TitleForCards(title: 'Выпечка'),
            GridViewForCards(
              card: bakeryCards,
              myHeight: 450,
            ),
            TitleForCards(title: 'Десерты'),
            GridViewForCards(
              card: dessertsCards,
              myHeight: 495,
            ),
          ],
        ),
      ),
    );
  }
}

// Заголовок для наименования товаров
class TitleForCards extends StatelessWidget {
  final String title;

  const TitleForCards({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
      ),
    );
  }
}

// Размещение карточек товара на экране
class GridViewForCards extends StatelessWidget {
  final List<Widget> card;
  final double myHeight;
  const GridViewForCards(
      {super.key, required this.card, required this.myHeight});

  @override
  Widget build(BuildContext context) {
    int crossAxisCount;

    double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth <= 490) {
      crossAxisCount = 2;
    } else if (screenWidth <= 680) {
      crossAxisCount = 3;
    } else if (screenWidth <= 850) {
      crossAxisCount = 4;
    } else if (screenWidth <= 1000) {
      crossAxisCount = 5;
    } else if (screenWidth <= 1130) {
      crossAxisCount = 6;
    } else if (screenWidth <= 1280) {
      crossAxisCount = 7;
    } else {
      crossAxisCount = 8;
    }
    return GridView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        mainAxisExtent: myHeight,
      ),
      children: card,
    );
  }
}
