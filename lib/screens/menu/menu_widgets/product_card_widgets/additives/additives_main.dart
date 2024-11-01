import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/models/product_model.dart';

class Additives extends StatefulWidget {
  final ProductModel? productProvider;
  final List<OneCheckbox> additivesList;
  const Additives({
    super.key,
    required this.additivesList,
    this.productProvider,
  });

  @override
  State<Additives> createState() => AdditivesState();
}

class AdditivesState extends State<Additives> {
  final style = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    final myPrice = widget.productProvider!.price;

    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                  if (widget.productProvider?.imagePath != null)
                    Image.asset(
                      widget.productProvider!.imagePath,
                      width: 180,
                      height: 180,
                      alignment: Alignment.centerLeft,
                    ),
                  Text(
                    widget.productProvider!.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                  if (widget.productProvider?.description != null)
                    Text(
                      widget.productProvider!.description!,
                      style: const TextStyle(
                        color: FreshKebabColors.fkDescriptionColor,
                        fontSize: 13,
                      ),
                    ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Выберите добавки:', style: style),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: widget.additivesList),
              ),
              Text(
                'Итого: ${myPrice} ₽',
                style: style,
              ),
              const SizedBox(height: 20),
              DecoratedBox(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: FreshKebabColors.fkRed, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 0.5,
                        blurRadius: 1,
                        offset: const Offset(0, 3),
                      ),
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 32),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'В корзину',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: FreshKebabColors.fkRed,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Один чекбокс с обязательным параметром названия добавки.
class OneCheckbox extends StatefulWidget {
  final String additives;
  final int price;
  final Function(int, bool)? onChanged;
  const OneCheckbox(
      {Key? key, required this.additives, required this.price, this.onChanged})
      : super(key: key);

  @override
  State<OneCheckbox> createState() => OneCheckboxState();
}

class OneCheckboxState extends State<OneCheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: Colors.black,
          splashRadius: 0,
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.additives,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Text(
              ' (+${widget.price} ₽)',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
