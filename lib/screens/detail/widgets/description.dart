import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 14
                ),
              ),
            ),
            const Text(
              "Specification",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 12
              ),
            ),
            const Text(
              "Reviewers",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 12
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        Text(description,style: const TextStyle(fontSize: 14,color: Colors.grey),)
      ],
    );
  }
}
