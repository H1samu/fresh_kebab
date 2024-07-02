import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fresh_kebab/provider/cart_provider.dart';
import 'package:fresh_kebab/screens/menu/models/cart_model.dart';
import 'package:provider/provider.dart';

class OrdersProductCard extends StatefulWidget {
  final CartModel cartItem;
  const OrdersProductCard({Key? key, required this.cartItem}) : super(key: key);

  @override
  OrdersProductCardState createState() => OrdersProductCardState();
}

class OrdersProductCardState extends State<OrdersProductCard> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        alignment: Alignment.centerRight,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius:
                const BorderRadius.horizontal(right: Radius.circular(20))),
        child: const Padding(
          padding: EdgeInsets.only(right: 10),
          child: FaIcon(FontAwesomeIcons.circleXmark),
        ),
      ),
      direction: DismissDirection.endToStart,
      key: ValueKey(widget.cartItem.product.id),
      onDismissed: (direction) {
        context.read<CartProvider>().removeItem(widget.cartItem.id);
      },
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: Row(
              children: [
                Image.asset(
                  widget.cartItem.product.imagePath,
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.cartItem.product.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        Text('${widget.cartItem.product.price.toString()} ₽'),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            context
                                .read<CartProvider>()
                                .decrimentQty(widget.cartItem.id);
                          },
                          icon: const Icon(Icons.remove_circle_outline),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          widget.cartItem.quantity.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(width: 10),
                        IconButton(
                          onPressed: () {
                            context
                                .read<CartProvider>()
                                .incrementQty(widget.cartItem.id);
                          },
                          icon: const Icon(Icons.add_circle_outline),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
