import 'package:cars_project/works/function.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cars_project/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Widget func(
    String img,
    /* String name */
  ) {
    return Column(
      children: [
        Image.asset(
          img,
          width: 175,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    List list = getCarDatas();
    return Scaffold(
        appBar: AppBar(title: Text('Chevrolet Cars')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
          ),
          itemCount: list.length,
          itemBuilder: (context, index) => Column(
            children: [
              Row(
                children: [
                  func(
                    list[index].image,
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: () {
                    a = index;
                    Navigator.pushNamed(context, '/second');
                  },
                  child: Text(list[index].name))
            ],
          ),
        ));
  }
}
