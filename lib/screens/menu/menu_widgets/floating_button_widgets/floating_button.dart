import 'package:flutter/material.dart';
import 'package:fresh_kebab/provider/cart_provider.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/order_widgets/order.dart';
import 'package:provider/provider.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({
    super.key,
  });

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  double _containerSize = 25.0;
  int _previousCartLength = 0;
  int _previousCartTotal = 0;
  bool _displayPlus = false;

  @override
  void initState() {
    super.initState();
    // Инициализируем предыдущую длину корзины при первом запуске
    _previousCartLength = context.read<CartProvider>().shoppingCart.length;
    _previousCartTotal = context.read<CartProvider>().cartSubTotal;
  }

  @override
  Widget build(BuildContext context) {
    var orderCount = context.watch<CartProvider>().shoppingCart.length;
    var orderSubTotal = context.watch<CartProvider>().cartSubTotal;

    // Проверяем условие: если длина корзины не изменилась, но изменилась стоимость корзины
    if (orderCount == _previousCartLength &&
        orderSubTotal != _previousCartTotal) {
      _displayPlus = true;
    } else {
      _displayPlus = false;
    }

    // Проверяем условие: если текущая длина корзины больше предыдущей
    if (orderCount > _previousCartLength ||
        (orderSubTotal != _previousCartTotal &&
            orderCount == _previousCartLength)) {
      setState(() {
        _containerSize = 30.0; // Увеличиваем размер контейнера
      });

      // Запускаем таймер для возвращения размера обратно через 200 мс
      Future.delayed(const Duration(milliseconds: 200), () {
        setState(() {
          _containerSize = 25.0; // Возвращаем стандартный размер контейнера
        });
      });

      // Обновляем значение предыдущей длины корзины
      _previousCartLength = orderCount;
      _previousCartTotal = orderSubTotal;
    }

    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                side: BorderSide(color: FreshKebabColors.fkGreen, width: 2)),
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  opaque: true,
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return const Order();
                  },
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    const begin = Offset(0.0, 1.0);
                    const end = Offset.zero;
                    const curve = Curves.easeInOut;
                    var tween = Tween(begin: begin, end: end)
                        .chain(CurveTween(curve: curve));
                    var offsetAnimation = animation.drive(tween);
                    return SlideTransition(
                        position: offsetAnimation, child: child);
                  },
                ),
              );
            },
            child: const Icon(
              Icons.shopping_bag_outlined,
              color: FreshKebabColors.fkGreen,
              size: 30,
            ),
          ),
        ),
        Positioned(
          bottom: -8,
          right: -8,
          child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: FreshKebabColors.fkRed,
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
              height: _containerSize,
              width: _containerSize,
              child: Text(
                _displayPlus ? '+' : "$orderCount",
                style: const TextStyle(color: Colors.white),
              )),
        ),
      ],
    );
  }
}
