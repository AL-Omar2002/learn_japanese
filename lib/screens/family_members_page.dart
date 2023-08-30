import 'package:flutter/material.dart';
import '../components/item.dart';
import '../models/number.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({Key? key}) : super(key: key);
  final List<Item> familyMembers = const [
    Item(
      jpName: 'Chichioya',
      enName: 'Father',
      image: 'assets/images/family_members/family_father.png',
    ),
    Item(
      jpName: 'Hahaoya',
      enName: 'Mother',
      image: 'assets/images/family_members/family_mother.png',
    ),
    Item(
      jpName: 'Sofu',
      enName: 'Grand Father',
      image: 'assets/images/family_members/family_grandfather.png',
    ),
    Item(
      jpName: 'Sobo',
      enName: 'Grand Mother',
      image: 'assets/images/family_members/family_grandmother.png',
    ),
    Item(
      jpName: 'Musuko',
      enName: 'Son',
      image: 'assets/images/family_members/family_son.png',
    ),
    Item(
      jpName: 'Musume',
      enName: 'Daughter',
      image: 'assets/images/family_members/family_daughter.png',
    ),
    Item(
      jpName: 'Ani',
      enName: 'Older Brother',
      image: 'assets/images/family_members/family_older_brother.png',
    ),
    Item(
      jpName: 'Ane',
      enName: 'Older Sister',
      image: 'assets/images/family_members/family_older_sister.png',
    ),
    Item(
      jpName: 'Otōto',
      enName: 'Younger Brother',
      image: 'assets/images/family_members/family_younger_brother.png',
    ),
    Item(
      jpName: 'Imōto',
      enName: 'Younger Sister',
      image: 'assets/images/family_members/family_younger_sister.png',
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
            itemCount: familyMembers.length,
            itemBuilder: ((context, index) {
              return ListItem(
                  number: familyMembers[index], color: Colors.green);
            })));
  }
}
