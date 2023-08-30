import 'package:flutter/material.dart';
import 'package:learn_japanese/components/category.dart';
import 'package:learn_japanese/screens/colors_page.dart';
import 'package:learn_japanese/screens/numbers_page.dart';
// import 'package:learn_japanese/screens/phrases_page.dart';
import 'family_members_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2e9e4),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
              text: 'Numbers',
              color: Colors.orange,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NumbersPage();
                    },
                  ),
                );
              }),
          Category(
              text: 'Family Members',
              color: Colors.green,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FamilyMemberPage();
                    },
                  ),
                );
              }),
          Category(
              text: 'Colors',
              color: Color(0xff7209b7),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ColorsPage();
                    },
                  ),
                );
              }),
          // Category(
          //     text: 'Phrases',
          //     color: Colors.blue,
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) {
          //             return PhrasesPage();
          //           },
          //         ),
          //       );
          //     }),
        ],
      ),
    );
  }
}
