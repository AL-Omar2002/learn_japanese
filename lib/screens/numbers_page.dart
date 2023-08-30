import 'package:flutter/material.dart';
import 'package:learn_japanese/components/item.dart';
import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        enName: 'One',
        jpName: 'ichi'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        enName: 'Two',
        jpName: 'Ni'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        enName: 'Three',
        jpName: 'San'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        enName: 'Four',
        jpName: 'Shi'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        enName: 'Five',
        jpName: 'Go'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        enName: 'Six',
        jpName: 'Roku'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'Seven',
        jpName: 'Sebun'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'Eight',
        jpName: 'hachi'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'Nine',
        jpName: 'Kyū'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'Ten',
        jpName: 'Jū'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text('Numbers'),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: ((context, index) {
              return ListItem(
                number: numbers[index],
                color: Colors.orange,
              );
            })));
  }

  // Build Method To Loop On The Item In The List And Build List Of Widget
  List<Widget> getList(List<Item> numbers) {
    List<Widget> itemList = [];
    for (int i = 0; i < numbers.length; i++) {
      itemList.add(ListItem(
        number: numbers[i],
        color: Colors.orange,
      ));
    }
    return itemList;
  }
}
