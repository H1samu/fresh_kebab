import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';

class Additives extends StatefulWidget {
  final List<Widget> additivesList;
  const Additives({
    super.key,
    required this.additivesList,
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
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
                Image.asset(
                  'assets/images/shawarma/bbq.png',
                  width: 180,
                  height: 180,
                ),
                const Text(
                  'data',
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  'ssasasas',
                  style: TextStyle(
                      color: FreshKebabColors.fkDescriptionColor, fontSize: 13),
                ),
                const SizedBox(height: 50),
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: FreshKebabColors.fkRed, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 32),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'В корзину',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: FreshKebabColors.fkRed, fontSize: 13),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
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
                'Итого: ₽',
                style: style,
              )
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
  const OneCheckbox({Key? key, required this.additives}) : super(key: key);

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
      ],
    );
  }
}
