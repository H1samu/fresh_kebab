import 'package:flutter/material.dart';

/* 
Дабы не запутаться в дальнейшем. Например, путь в карточке шаурмы с говядиной будет такой: 
      Additives(
        forBeef: SomeCheckbox(
          beef: OneCheckbox(additives: 'Больше говядины'),
        ),
      ),
*/

// 'Больше курицы (+140 ₽)' / 'Больше говядины (+200 ₽)'

class Additives extends StatefulWidget {
  final SomeCheckbox? forVegan;
  final SomeCheckbox? forChiken;
  final SomeCheckbox? forBeef;
  const Additives({super.key, this.forVegan, this.forChiken, this.forBeef});

  @override
  State<Additives> createState() => _AdditivesState();
}

class _AdditivesState extends State<Additives> {
  final style = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Выберите добавки:', style: style),
                    if (widget.forVegan != null)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: widget.forVegan!,
                      ),
                    Text(
                      'Итого: ₽',
                      style: style,
                    )
                  ],
                )
              ],
            ),
            const Row(),
          ],
        ),
      ),
    );
  }
}

// Все чекбоксы с выбором добавки. Параметры с добавками "Больше курицы" и "Больше говядины" являются необязательными, а все остальные добавки уже добавлены.
class SomeCheckbox extends StatefulWidget {
  final OneCheckbox? chiken;
  final OneCheckbox? beef;
  const SomeCheckbox({
    Key? key,
    this.chiken,
    this.beef,
  }) : super(key: key);

  @override
  State<SomeCheckbox> createState() => _SomeCheckboxState();
}

class _SomeCheckboxState extends State<SomeCheckbox> {
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
          additives: 'Оливки (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Халапеньо (+30 ₽)',
        ),
        const OneCheckbox(
          additives: 'Морковь по-корейски (+45 ₽)',
        ),
        const OneCheckbox(
          additives: 'Картофель-фри (+45 ₽)',
        ),
        const OneCheckbox(
          additives: 'Сыр Голладский (+45 ₽)',
        ),
        if (widget.chiken != null) widget.chiken!,
        if (widget.beef != null) widget.beef!,
      ],
    );
  }
}

// Один чекбокс с обязательным параметром названия добавки.
class OneCheckbox extends StatefulWidget {
  final String additives;
  const OneCheckbox({super.key, required this.additives});

  @override
  State<OneCheckbox> createState() => _OneCheckboxState();
}

class _OneCheckboxState extends State<OneCheckbox> {
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
