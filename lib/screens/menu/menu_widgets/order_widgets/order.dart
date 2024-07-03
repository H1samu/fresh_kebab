import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/cart_provider.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/order_widgets/order_product_card.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/order_widgets/personal_data_widgets/personal_data.dart';
import 'package:provider/provider.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> with WidgetsBindingObserver {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Проверяем состояние корзины и возвращаемся назад если она пуста
    if (context.watch<CartProvider>().shoppingCart.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pop(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
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
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const Divider(height: 1),
              const SizedBox(height: 30),
              Consumer<CartProvider>(
                builder: (context, value, child) => Column(
                  children: value.shoppingCart
                      .map(
                        (cartItem) => OrdersProductCard(
                          cartItem: cartItem,
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 30),
              const Divider(height: 1),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Сумма: ${context.watch<CartProvider>().cartSubTotal} ₽",
                      style: const TextStyle(fontSize: 16))
                ],
              ),
              const SizedBox(height: 30),
              const PersonalData(),
              const TotalPrice()
            ],
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
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Сумма: ${context.watch<CartProvider>().cartSubTotal} ₽',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                context.watch<CartProvider>().cartTotal < 500
                    ? const Text(
                        'Доставка от 500 рублей!',
                        style: TextStyle(
                            color: FreshKebabColors.fkRed,
                            fontWeight: FontWeight.w500),
                      )
                    : Text(
                        'Доставка: ${context.watch<CartProvider>().shippingCharge} ₽',
                      )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  context.watch<CartProvider>().cartTotal < 500
                      ? ''
                      : 'Итоговая сумма: ${context.watch<CartProvider>().cartTotal} ₽',
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
        GestureDetector(
          onTap: () {
            if (context.read<CartProvider>().cartTotal < 500) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Color.fromARGB(255, 247, 247, 247),
                  content: Text(
                    "Сумма заказа должна быть не менее 500 рублей!",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            } else {
              // Логика заказа
            }
          },
          child: Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
                color: FreshKebabColors.fkRed,
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ]),
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
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
