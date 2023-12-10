import 'package:flutter/material.dart';
import 'package:fresh_kebab/constants.dart';

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
                          textPrice: '500 ₽'),
                      Spacer(),
                      ProductCard(
                          imagePath: 'assets/images/pizza/meat.png',
                          textTitle: 'Пицца "Мясная"',
                          textDescription:
                              'Соус итальянский, фирменные соус, сыр моцарелла, конина, пепперони, свежие томаты, оливки, 2 вида фирменных специй, соус песто',
                          textPrice: '500 ₽'),
                    ],
                  ),
                )
              ],
            )
          ],
        ));
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String textDescription;
  final String textPrice;
  const ProductCard(
      {super.key,
      required this.imagePath,
      required this.textTitle,
      required this.textDescription,
      required this.textPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 600,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 40),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          Text(
            textDescription,
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
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffcc3333), width: 2),
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20)),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
              child: Text(
                'В корзину',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffcc3333), fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
