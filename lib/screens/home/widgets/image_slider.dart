import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSlider(
      {super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              onPageChanged: onChange,
              allowImplicitScrolling: true,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  'images/s4.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/b7.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'images/tl1.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index
                        ? kPrimaryColor
                        : Colors.transparent,
                        border: Border.all(color: const Color(0xffff660e),),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
