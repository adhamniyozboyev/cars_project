import 'package:cars_project/works/function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    List list = getCarDatas();
    return Scaffold(
      appBar: AppBar(title: Text(list[a].name)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            list[a].image,
            height: 300,
            width: 300,
            fit: BoxFit.contain,
          ),
          Card(
            child: Column(
              children: [
                Text(
                  'Nomi :${list[a].name}',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.blue,
                      fontStyle: FontStyle.italic),
                ),
                Text(
                  'Yili: ${list[a].yili}',
                  style: TextStyle(fontSize: 40),
                ),
                Text(
                  'Narxi: ${list[a].cost}',
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {},
              child: Text(
                'Buyrutma berish',
                style: TextStyle(fontSize: 40),
              ))
        ],
      ),
    );
  }
}
