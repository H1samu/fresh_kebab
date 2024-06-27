import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/constants.dart';
import 'package:fresh_kebab/screens/menu/menu_widgets/order_widgets/order.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  @override
  Widget build(BuildContext context) {
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
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: FreshKebabColors.fkRed,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            height: 25,
            width: 25,
            child: const Text(
              '0',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
