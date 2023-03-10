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
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [Image.asset(list[a].image)],
            );
          }),
    );
  }
}
