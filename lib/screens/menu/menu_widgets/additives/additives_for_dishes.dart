import 'package:flutter/material.dart';

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
