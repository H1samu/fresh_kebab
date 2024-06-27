import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/order_widgets/personal_data_widgets/agreement_widget.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Ваше имя',
        ),
        SizedBox(height: 8),
        MyTextField(),
        SizedBox(height: 25),
        Text(
          'Ваш телефон',
        ),
        SizedBox(height: 8),
        MyTextField(
          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: 25),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Адрес доставки*',
            ),
            SizedBox(height: 5),
            Text(
              '(*доставку в дальние районы уточняйте у оператора)',
              style: TextStyle(fontSize: 9),
            ),
          ],
        ),
        SizedBox(height: 8),
        MyTextField(
          hintText: 'Название улицы',
        ),
        SizedBox(height: 20),
        MyTextField(
          hintText: 'Номер дома',
        ),
        SizedBox(height: 20),
        MyTextField(
          hintText: 'Номер квартиры',
        ),
        SizedBox(height: 20),
        MyTextField(
          hintText: 'Номер подъезда',
        ),
        SizedBox(height: 20),
        MyTextField(
          hintText: 'Этаж',
        ),
        SizedBox(height: 20),
        Text(
          'Работает домофон',
        ),
        TwoRadio(
          radioName1: 'Да',
          radioName2: 'Нет',
        ),
        SizedBox(height: 15),
        MyTextField(
          hintText: 'Комментарий\n\n\n',
          height: 120,
          maxLines: null,
        ),
        SizedBox(height: 15),
        OrderOneCheckbox(),
        SizedBox(height: 15),
        Text(
          'Способ оплаты',
        ),
        TwoRadio(
          radioName1: "Наличными при получении",
          radioName2: "Оплата картой при получении",
        ),
        SizedBox(height: 50),
      ],
    );
  }
}

// Поле ввода данных пользователя
class MyTextField extends StatelessWidget {
  final double? height;
  final int? maxLines;
  final String? hintText;
  final TextInputType? keyboardType;

  const MyTextField(
      {super.key,
      this.hintText,
      this.height = 56,
      this.maxLines = 1,
      this.keyboardType = TextInputType.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Пожалуйста, заполните все обязательные поля';
          }
          return null;
        },
        enableInteractiveSelection: false,
        keyboardType: keyboardType,
        maxLines: maxLines,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
        cursorColor: Colors.black,
        cursorWidth: 1,
        decoration: InputDecoration(
          counterText: '',
          hintText: hintText,
          hintStyle: const TextStyle(
              color: FreshKebabColors.fkHintColor,
              fontWeight: FontWeight.normal,
              fontSize: 14,
              overflow: TextOverflow.fade),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: FreshKebabColors.fkHintColor)),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide:
                BorderSide(color: FreshKebabColors.fkFocusedBorderColor),
          ),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red)),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.zero),
            borderSide: BorderSide(color: FreshKebabColors.fkHintColor),
          ),
        ),
      ),
    );
  }
}

class TwoRadio extends StatefulWidget {
  final String radioName1;
  final String radioName2;
  const TwoRadio({Key? key, required this.radioName1, required this.radioName2})
      : super(key: key);
  @override
  PaymentMethodWidgetState createState() => PaymentMethodWidgetState();
}

class PaymentMethodWidgetState extends State<TwoRadio> {
  int? selectedValue;

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
            const SizedBox(width: 10),
            Text(widget.radioName1),
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
            const SizedBox(width: 10),
            Text(widget.radioName2),
          ],
        ),
      ],
    );
  }
}

class OrderOneCheckbox extends StatefulWidget {
  const OrderOneCheckbox({Key? key}) : super(key: key);

  @override
  State<OrderOneCheckbox> createState() => _OrderOneCheckboxState();
}

class _OrderOneCheckboxState extends State<OrderOneCheckbox> {
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
            const Text(
              'Я принимаю',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const Agreement();
                  },
                );
              },
              child: const Text(
                'соглашение об обработке персональных данных',
                style: TextStyle(
                  color: FreshKebabColors.fkAgreementColor,
                  fontSize: 9,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
