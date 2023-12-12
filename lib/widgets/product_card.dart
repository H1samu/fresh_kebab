import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String textDescription;
  final String textPrice;
  final String textWeight;
  const ProductCard({
    super.key,
    required this.imagePath,
    required this.textTitle,
    required this.textDescription,
    required this.textPrice,
    required this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 550,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
          ),
          const SizedBox(height: 30),
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
          Text(
            textWeight,
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
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffcc3333), width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(30)),
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
