import 'package:flutter/material.dart';

class MyImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const MyImageSlider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        height: 250,
        child: PageView.builder(
          onPageChanged: onChange,
          itemBuilder: (context, index) => Hero(
            tag: image,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
          ),
        ),
      ),
    );
  }
}
