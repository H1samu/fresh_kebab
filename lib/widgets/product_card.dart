import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String textPrice;
  final String textWeight;
  const ProductCard({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    required this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 565,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 150,
            width: 150,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (textDescription != null)
            Text(
              textDescription!,
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

class ProductCardSmall extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String textPrice;
  final String? textWeight;
  const ProductCardSmall({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 350,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 140,
            width: 140,
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 30),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (textDescription != null)
            Text(
              textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          if (textWeight != null)
            Text(
              textWeight!,
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

class ProductCardLong extends StatelessWidget {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final String textPrice;
  final String? textWeight;
  const ProductCardLong({
    super.key,
    required this.imagePath,
    required this.textTitle,
    this.textDescription,
    required this.textPrice,
    this.textWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 350,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            height: 140,
            width: 140,
          ),
          const SizedBox(height: 30),
          Text(textTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 19.5,
                fontWeight: FontWeight.w300,
              )),
          const SizedBox(height: 15),
          if (textDescription != null)
            Text(
              textDescription!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
          if (textWeight != null)
            Text(
              textWeight!,
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
