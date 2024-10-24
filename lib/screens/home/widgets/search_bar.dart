import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kContentColor,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'search...', border: InputBorder.none),
            ),
          ),
          SizedBox(width: 20,),
          Text('|'),
          Icon(Icons.tune),
        ],
      ),
    );
  }
}
