import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'homePage.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sizning Natijangiz',
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: Icon(Icons.home))
        ],
      )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Tabriklaymiz buyrutma  muvaffaqiyatli amalga oshirildi 🎉🎉🎉\n\nCongratulations, the order was successfully completed 🎉🎉🎉',
            style: TextStyle(fontSize: 30, color: Color(0xFF4A67EC)),
          ),
          Text(
              'Adminlarimiz siz bilan tez orada aloqaga chiqishadi \n\nOur admins will contact you soon ')
        ],
      )),
    );
  }
}
