import 'package:flutter/material.dart';
import 'package:fresh_kebab/constants.dart';
import 'package:fresh_kebab/widgets/product_card.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: myDrawer,
        appBar: myAppBar,
        body: ListView(
          children: const [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, bottom: 120, top: 60),
                  child: Text(
                    "Пицца",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
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
                          imagePath: 'assets/images/pizza/meat.png',
                          textTitle: 'Пицца "Мясная"',
                          textDescription:
                              'Соус итальянский, фирменные соус, сыр моцарелла, конина, пепперони, свежие томаты, оливки, 2 вида фирменных специй, соус песто',
                          textWeight: 'Вес: 560гр.',
                          textPrice: '500 ₽'),
                    ],
                  ),
                ),
              ],
            ),
            Footer()
          ],
        ));
  }
}
