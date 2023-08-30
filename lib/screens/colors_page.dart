import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<Item> colorsName = const [
    Item(
      jpName: 'Kuro',
      enName: 'Black',
      image: 'assets/images/colors/color_black.png',
    ),
    Item(
      jpName: 'Chairo',
      enName: 'Brown',
      image: 'assets/images/colors/color_brown.png',
    ),
    Item(
      jpName: 'Dasutiierō',
      enName: 'Dusty Yellow',
      image: 'assets/images/colors/color_dusty_yellow.png',
    ),
    Item(
      jpName: 'Gurē',
      enName: 'Gray',
      image: 'assets/images/colors/color_gray.png',
    ),
    Item(
      jpName: 'Midori',
      enName: 'Green',
      image: 'assets/images/colors/color_green.png',
    ),
    Item(
      jpName: 'Aka',
      enName: 'Red',
      image: 'assets/images/colors/color_red.png',
    ),
    Item(
      jpName: 'Shiro',
      enName: 'White',
      image: 'assets/images/colors/color_white.png',
    ),
    Item(
      jpName: 'Kiiro',
      enName: 'Yellow',
      image: 'assets/images/colors/yellow.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text('Family Members'),
        ),
        body: ListView.builder(
            itemCount: colorsName.length,
            itemBuilder: ((context, index) {
              return ListItem(
                number: colorsName[index],
                color: Colors.green,
              );
            })));
  }
}
