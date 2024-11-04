import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/cart_provider.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/floating_button_widgets/floating_button.dart';
import 'package:fresh_kebab/screens/common_widgets/footer.dart';
import 'package:fresh_kebab/screens/common_widgets/header.dart';
import 'package:fresh_kebab/screens/menu/repository/menu_position_lists_mapping.dart';
import 'package:provider/provider.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({Key? key}) : super(key: key);

  @override
  MenuMainState createState() => MenuMainState();
}

class MenuMainState extends State<MenuMain> {
  // Ключи к табам
  final List<GlobalKey> tabCategories = List.generate(11, (_) => GlobalKey());

  late ScrollController scrollController;

  BuildContext? tabContext;

  @override
  void initState() {
    scrollController = ScrollController();
    scrollController.addListener(animateToTab);
    super.initState();
  }

  void animateToTab() {
    late RenderBox box;

    final initialItemPosition =
        (tabCategories[0].currentContext!.findRenderObject() as RenderBox)
            .localToGlobal(Offset.zero);

    for (var i = 0; i < tabCategories.length; i++) {
      if (tabCategories[i].currentContext != null) {
        box = tabCategories[i].currentContext!.findRenderObject() as RenderBox;

        Offset position = box.localToGlobal(Offset.zero);

        if (scrollController.offset >= (position.dy - initialItemPosition.dy)) {
          DefaultTabController.of(tabContext!).animateTo(
            i,
            duration: const Duration(milliseconds: 200),
          );
        }
      }
    }
  }

  void scrollToIndex(int index) async {
    scrollController.removeListener(animateToTab);
    final categories = tabCategories[index].currentContext!;
    await Scrollable.ensureVisible(
      categories,
      duration: const Duration(milliseconds: 600),
    );
    scrollController.addListener(animateToTab);
  }

// Каркас
  @override
  Widget build(BuildContext context) {
    var orderIsEmpty = context.watch<CartProvider>().shoppingCart.isEmpty;
    return DefaultTabController(
      length: 11,
      child: Builder(
        builder: (BuildContext context) {
          tabContext = context;
          return Scaffold(
            floatingActionButton: orderIsEmpty ? null : const FloatingButton(),
            backgroundColor: Colors.white,
            appBar: _buildAppBar(),
            body: _buildMenu(),
          );
        },
      ),
    );
  }

// Аппбар
  AppBar _buildAppBar() {
    final List<String> tabTitles = [
      'Пицца',
      'Фри-меню',
      'Напитки',
      'Молочные коктейли',
      'Шаурма',
      'Бургеры',
      'Дёнер',
      'Горячие блюда',
      'Салаты',
      'Выпечка',
      'Десерты',
    ];
    return AppBar(
      automaticallyImplyLeading: false,
      scrolledUnderElevation: 0,
      shape: Border.all(color: Colors.white),
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: TabBar(
          onTap: (int index) => scrollToIndex(index),
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelColor: FreshKebabColors.fkGreen,
          indicatorColor: FreshKebabColors.fkRed,
          splashFactory: NoSplash.splashFactory,
          overlayColor: WidgetStateColor.transparent,
          tabs: tabTitles.map((title) => Tab(text: title)).toList()),
      flexibleSpace: const Padding(
        padding: EdgeInsets.only(right: 40, top: 20, bottom: 40, left: 20),
        child: HeaderInfo(),
      ),
    );
  }

// Основное меню
  SingleChildScrollView _buildMenu() {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                _titleForCards('Пицца', 0),
                GridViewForCards(
                  card: productCards['pizza']!,
                  myHeight: 560,
                ),
                _titleForCards('Фри-меню', 1),
                GridViewForCards(
                  card: productCards['fries']!,
                  myHeight: 385,
                ),
                _titleForCards('Напитки', 2),
                GridViewForCards(
                  card: productCards['drinks']!,
                  myHeight: 370,
                ),
                _titleForCards('Молочные коктейли', 3),
                GridViewForCards(
                  card: productCards['cocktails']!,
                  myHeight: 460,
                ),
                _titleForCards('Шаурма', 4),
                GridViewForCards(
                  card: productCards['shawarma']!,
                  myHeight: 500,
                ),
                _titleForCards('Бургеры', 5),
                GridViewForCards(
                  card: productCards['burgers']!,
                  myHeight: 590,
                ),
                _titleForCards('Дёнер', 6),
                GridViewForCards(
                  card: productCards['doners']!,
                  myHeight: 590,
                ),
                _titleForCards('Горячие блюда', 7),
                GridViewForCards(
                  card: productCards['dishes']!,
                  myHeight: 600,
                ),
                _titleForCards('Салаты', 8),
                GridViewForCards(
                  card: productCards['salads']!,
                  myHeight: 520,
                ),
                _titleForCards('Выпечка', 9),
                GridViewForCards(
                  card: productCards['bakery']!,
                  myHeight: 450,
                ),
                _titleForCards('Десерты', 10),
                GridViewForCards(
                  card: productCards['desserts']!,
                  myHeight: 495,
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const MasterFooter()
        ],
      ),
    );
  }

// Заголовок для наименования товаров
  Container _titleForCards(
    final String title,
    final int index,
  ) {
    return Container(
      key: tabCategories[index],
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
