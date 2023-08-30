import 'package:flutter/material.dart';
import '../models/number.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.number, required this.color})
      : super(key: key);
  final Item number;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 18),
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: Color(0xfff2e9e4),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Text(
                  number.enName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              print('Sound Is Running Sir');
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
