import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/agreement_widget.dart';

// Экран заказа товаров пользователя (требует доработки)
class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Ваш заказ:",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(height: 1),
                const SizedBox(height: 30),
                // Нужно реализовать добавление товаров
                const Column(
                  children: [
                    OrdersProductCard(),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(height: 1),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("Сумма:  ₽", style: TextStyle(fontSize: 16))],
                ),
                const SizedBox(height: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Ваше имя',
                    ),
                    const SizedBox(height: 8),
                    const MyTextField(),
                    const SizedBox(height: 25),
                    const Text(
                      'Ваш телефон',
                    ),
                    const SizedBox(height: 8),
                    const MyTextField(
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 25),
                    const Column(
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
                    const SizedBox(height: 8),
                    const MyTextField(
                      hintText: 'Название улицы',
                    ),
                    const SizedBox(height: 20),
                    const MyTextField(
                      hintText: 'Номер дома',
                    ),
                    const SizedBox(height: 20),
                    const MyTextField(
                      hintText: 'Номер квартиры',
                    ),
                    const SizedBox(height: 20),
                    const MyTextField(
                      hintText: 'Номер подъезда',
                    ),
                    const SizedBox(height: 20),
                    const MyTextField(
                      hintText: 'Этаж',
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Работает домофон',
                    ),
                    const TwoRadio(
                      radioName1: 'Да',
                      radioName2: 'Нет',
                    ),
                    const SizedBox(height: 15),
                    const MyTextField(
                      hintText: 'Комментарий\n\n\n',
                      height: 120,
                      maxLines: null,
                    ),
                    const SizedBox(height: 15),
                    const OrderOneCheckbox(),
                    const SizedBox(height: 15),
                    const Text(
                      'Способ оплаты',
                    ),
                    const TwoRadio(
                      radioName1: "Наличными при получении",
                      radioName2: "Оплата картой при получении",
                    ),
                    const SizedBox(height: 50),
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Сумма: ₽',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Доставка: ₽',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Итоговая сумма: ₽',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                    Container(
                      height: 60,
                      width: 380,
                      decoration: const BoxDecoration(
                        color: FreshKebabColors.fkRed,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      child: const Center(
                        child: Text(
                          'Заказать',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
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

class OrdersProductCard extends StatefulWidget {
  const OrdersProductCard({Key? key}) : super(key: key);

  @override
  OrdersProductCardState createState() => OrdersProductCardState();
}

class OrdersProductCardState extends State<OrdersProductCard> {
  int count = 0;

  void increment() {
    setState(() {
      count = count + 1;
    });
  }

  void decrement() {
    setState(() {
      count = count - 1 < 0 ? 0 : count - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    int price = 125;
    var result = count * price;
    return SizedBox(
      height: 70,
      child: Row(
        children: [
          Image.asset(
            'assets/images/drinks/cola.png',
            height: 70,
            width: 70,
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'Пицца "Салями"',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  IconButton(
                    onPressed: decrement,
                    icon: const Icon(Icons.remove_circle_outline),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      '$count',
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: increment,
                    icon: const Icon(Icons.add_circle_outline),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    '$result ₽',
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Column(
            children: [Icon(Icons.cancel_outlined)],
          )
        ],
      ),
    );
  }
}

// class OrdersProductCard extends StatelessWidget {
//   const OrdersProductCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     int number = 0;

//     return SizedBox(
//       height: 70,
//       child: Row(
//         children: [
//           Image.asset(
//             'assets/images/drinks/cola.png',
//             height: 70,
//             width: 70,
//           ),
//           const SizedBox(width: 20),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Row(
//                 children: [
//                   Text(
//                     'Пицца "Салями"',
//                     style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 5),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         number = number - 1;
//                       });
//                     },
//                     child: const Icon(
//                       Icons.remove_circle_outline,
//                     ),
//                   ),
//                    Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 10),
//                     child: Text(
//                       '$number',
//                       style:
//                           TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
//                     ),
//                   ),
//                   GestureDetector(
//                       onTap: () {
//                         setState(() {
//                         number = number + 1;
//                       });
//                       },
//                       child: const Icon(Icons.add_circle_outline)),
//                   const SizedBox(width: 20),
//                   const Text(
//                     '920 ₽',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w300,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           const Spacer(),
//           const Column(
//             children: [Icon(Icons.cancel_outlined)],
//           )
//         ],
//       ),
//     );
//   }
// }
