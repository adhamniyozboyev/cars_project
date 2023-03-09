import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Widget func(String img, String name) {
    return Column(
      children: [
        Image.network(
          img,
          width: 175,
        ),
        ElevatedButton(onPressed: () {}, child: Text(name))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Buy a car')),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                func(
                    'https://s.auto.drom.ru/img5/catalog/photos/fullsize/chevrolet/captiva/chevrolet_captiva_289679.jpg',
                    'Capttiva'),
                func(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDr4N-bG7CUaUeHGdUxeJWp9G9glO9ydLLtw&usqp=CAU',
                    'Malibu'),
              ],
            ),
            Row()
          ],
        ));
  }
}
