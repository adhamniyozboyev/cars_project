import 'package:flutter/material.dart';
import 'data.dart';
import 'class.dart';
int a=0;
List<Cars> getCarDatas() {
  List<Cars> list = [];
  for (Map<String, String> map in data.values) {
    list.add(Cars(
        name: map['name']!,
        cost: map['cost']!,
        yili: map['yili']!,
        image: map['image']!));
  }
  return list;
}
