import 'package:flutter/material.dart';
import 'package:fresh_kebab/general/common_widgets/footer.dart';
import 'package:fresh_kebab/general/menu/menu_widgets/data.dart';

class MenuMain extends StatefulWidget {
  const MenuMain({Key? key}) : super(key: key);

  @override
  State<MenuMain> createState() => _MenuMainState();
}

class _MenuMainState extends State<MenuMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 11, vsync: this);
    _scrollController = ScrollController();

    _scrollController.addListener(() {
      double offset = _scrollController.offset;
      double maxExtent = _scrollController.position.maxScrollExtent;

      if (offset <= maxExtent / 11) {
        _tabController.animateTo(0);
      } else if (offset <= (2 * maxExtent) / 11) {
        _tabController.animateTo(1);
      } else if (offset <= (3 * maxExtent) / 11) {
        _tabController.animateTo(2);
      } else if (offset <= (4 * maxExtent) / 11) {
        _tabController.animateTo(3);
      } else if (offset <= (5 * maxExtent) / 11) {
        _tabController.animateTo(4);
      } else if (offset <= (6 * maxExtent) / 11) {
        _tabController.animateTo(5);
      } else if (offset <= (7 * maxExtent) / 11) {
        _tabController.animateTo(6);
      } else if (offset <= (8 * maxExtent) / 11) {
        _tabController.animateTo(7);
      } else if (offset <= (9 * maxExtent) / 11) {
        _tabController.animateTo(8);
      } else if (offset <= (10 * maxExtent) / 11) {
        _tabController.animateTo(9);
      } else {
        _tabController.animateTo(10);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdfff5),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: MasterHeader(_tabController),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: FullMenu(_tabController),
      ),
    );
  }
}

class MasterHeader extends StatelessWidget {
  final TabController tabController;
  const MasterHeader(this.tabController);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 11,
      child: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        shape: Border.all(color: const Color(0xfffdfff5)),
        foregroundColor: const Color(0xfffdfff5),
        backgroundColor: const Color(0xfffdfff5),
        elevation: 0,
        bottom: TabBar(
          controller: tabController,
          onTap: (index) {},
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelColor: const Color(0xff028f52),
          indicatorColor: const Color(0xffcc3333),
          splashFactory: NoSplash.splashFactory,
          tabs: const [
            Tab(text: 'Пицца '),
            Tab(text: 'Фри-меню'),
            Tab(text: 'Напитки '),
            Tab(text: 'Молочные коктейли'),
            Tab(text: 'Шаурма'),
            Tab(text: 'Бургеры'),
            Tab(text: 'Дёнер'),
            Tab(text: 'Горячие блюда'),
            Tab(text: 'Салаты'),
            Tab(text: 'Выпечка'),
            Tab(text: 'Десерты'),
          ],
        ),
        flexibleSpace: Padding(
          padding:
              const EdgeInsets.only(right: 40, top: 20, bottom: 40, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/logos/fk.png",
                width: 150,
                height: 60,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Доставка с ',
                        style: TextStyle(fontSize: 11, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: '9:00 ',
                              style: TextStyle(color: Colors.red)),
                          TextSpan(text: 'до '),
                          TextSpan(
                              text: '23:00',
                              style: TextStyle(color: Colors.red))
                        ]),
                  ),
                  const SizedBox(height: 5),
                  const Text('Телефон: 222-333', style: TextStyle(fontSize: 11))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FullMenu extends StatelessWidget {
  final TabController tabController;
  const FullMenu(this.tabController);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
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

class TitleForCards extends StatelessWidget {
  final String title;

  const TitleForCards({super.key, required this.title});

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
