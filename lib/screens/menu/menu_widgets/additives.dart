import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/* 
Дабы не запутаться в дальнейшем. Например, путь в карточке шаурмы с говядиной будет такой: 
      Additives(
        setting: SomeCheckbox(
          chikenOrbeef: OneCheckbox(additives: 'Больше говядины'),
        ),
      ),
*/

// 'Больше курицы (+140 ₽)' / 'Больше говядины (+200 ₽)'

class Additives extends StatefulWidget {
  final SomeCheckbox? setting;
  const Additives({
    super.key,
    this.setting,
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.pop(context),
                      ),
                      Text('Выберите добавки:', style: style),
                    ],
                  ),
                  if (widget.setting != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: widget.setting!,
                    ),
                  Text(
                    'Итого: ₽',
                    style: style,
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/shawarma/250.png',
                    width: 180,
                    height: 180,
                  ),
                  const Text(
                    'data',
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    'ssasasas',
                    style: TextStyle(color: Color(0xff636363), fontSize: 13),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color(0xffcc3333), width: 2),
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
                          style:
                              TextStyle(color: Color(0xffcc3333), fontSize: 13),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

// Все чекбоксы с выбором добавки. Параметры с добавками "Больше курицы" и "Больше говядины" являются необязательными, а все остальные добавки уже добавлены.
class SomeCheckbox extends StatefulWidget {
  final OneCheckbox? chikenOrbeef;
  const SomeCheckbox({
    Key? key,
    this.chikenOrbeef,
  }) : super(key: key);

  @override
  State<SomeCheckbox> createState() => SomeCheckboxState();
}

class SomeCheckboxState extends State<SomeCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const OneCheckbox(
          additives: 'Сырный лаваш (+20 ₽)',
        ),
        const OneCheckbox(
          additives: 'Аджика (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Больше соуса (+45 ₽)',
        ),
        const OneCheckbox(
          additives: 'Грибы жареные (+50 ₽)',
        ),
        const OneCheckbox(
          additives: 'Картофель фри (+50 ₽)',
        ),
        const OneCheckbox(
          additives: 'Лук маринованный (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Морковь по-корейски (+50 ₽)',
        ),
        const OneCheckbox(
          additives:
              'Овощной салат (капуста, морковь, огурцы, помидоры) (+70 ₽)',
        ),
        const OneCheckbox(
          additives: 'Огурцы маринованные (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Огурцы свежие (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Оливки (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Помидоры (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Растительное мясо (+220 ₽)',
        ),
        const OneCheckbox(
          additives: 'Сыр Моцарелла (+50 ₽)',
        ),
        const OneCheckbox(
          additives: 'Сыр Брынза (+50 ₽)',
        ),
        const OneCheckbox(
          additives: 'Сыр Голландский (+50 ₽)',
        ),
        const OneCheckbox(
          additives: 'Халапеньо (+30 ₽)',
        ),
        if (widget.chikenOrbeef != null) widget.chikenOrbeef!,
      ],
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

class RadioForDishes extends StatefulWidget {
  final String radioName1;
  final String radioName2;
  final String radioName3;
  const RadioForDishes(
      {super.key,
      required this.radioName1,
      required this.radioName2,
      required this.radioName3});

  @override
  State<RadioForDishes> createState() => _RadioForDishesState();
}

class _RadioForDishesState extends State<RadioForDishes> {
  int? selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = 0;
  }

  TextStyle style = const TextStyle(fontSize: 9);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Radio(
              activeColor: Colors.black,
              splashRadius: 0,
              value: 0,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text(
              widget.radioName1,
              style: style,
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              activeColor: Colors.black,
              splashRadius: 0,
              value: 1,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text(
              widget.radioName2,
              style: style,
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              activeColor: Colors.black,
              splashRadius: 0,
              value: 2,
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value;
                });
              },
            ),
            Text(
              widget.radioName3,
              style: style,
            ),
          ],
        ),
      ],
    );
  }
}
