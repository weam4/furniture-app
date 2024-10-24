import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';

class CustumAppBar extends StatelessWidget {
  const CustumAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){},
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: kContentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.grid_view_sharp),
          ),
        ),
        IconButton(
          onPressed: (){},
          //iconSize: 30,
          icon: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: kContentColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(Icons.notifications),
          ),
        ),
      ],
    );
  }
}
