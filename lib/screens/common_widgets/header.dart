import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/common_widgets/url_launcher.dart';

class SlaveHeader extends StatelessWidget {
  const SlaveHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 40, 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderInfo(),
          IconButton(
            splashColor: Colors.transparent,
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/logos/fk.png",
          width: 150,
          height: 60,
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                  text: 'Доставка с ',
                  style: TextStyle(fontSize: 11, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text: '9:00 ',
                        style: TextStyle(color: Color(0xffcc3333))),
                    TextSpan(text: 'до '),
                    TextSpan(
                        text: '23:00',
                        style: TextStyle(color: Color(0xffcc3333)))
                  ]),
            ),
            const SizedBox(height: 5),
            GestureDetector(
                onTap: () => MyLaunch.callMain(),
                child: const Text('Телефон: 222-333',
                    style: TextStyle(fontSize: 11)))
          ],
        ),
      ],
    );
  }
}
