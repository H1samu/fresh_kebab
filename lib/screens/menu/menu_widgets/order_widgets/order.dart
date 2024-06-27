import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/order_widgets/personal_data_widgets/personal_data.dart';

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
                const PersonalData(),
                const TotalPrice()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TotalPrice extends StatefulWidget {
  const TotalPrice({super.key});

  @override
  State<TotalPrice> createState() => _TotalPriceState();
}

class _TotalPriceState extends State<TotalPrice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Сумма:  ₽',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Доставка:  ₽',
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
