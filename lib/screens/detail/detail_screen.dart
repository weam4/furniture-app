import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/models/products_model.dart';
import 'package:provider_ecommerce/screens/detail/widgets/addto_cart.dart';
import 'package:provider_ecommerce/screens/detail/widgets/description.dart';
import 'package:provider_ecommerce/screens/detail/widgets/detail_app_bar.dart';
import 'package:provider_ecommerce/screens/detail/widgets/image_slider.dart';
import 'package:provider_ecommerce/screens/detail/widgets/item_detail.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  int currentColor = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //******** FOR QUANTITY && ADD TO CART BUTTON**************/
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kContentColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //************** FOR BACK BUTTON , SHARE AND FAV.************/
              DetailAppBar(product: widget.product),
              //************** FOR IMAGE OF PRODUCT************/
              MyImageSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                image: widget.product.image,
              ),
              const SizedBox(
                height: 10,
              ),
              //************** FOR 3 DOTS OF SLIDER ************/
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => AnimatedContainer(
                    duration: const Duration(microseconds: 300),
                    width: currentImage == index ? 15 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage == index
                          ? kPrimaryColor
                          : Colors.transparent,
                      border: Border.all(color: kPrimaryColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //************** FOR WHITE PART ************/
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                  bottom: 100,
                ),
                //************** PRODUCT'S ITEM DETAILS ***************/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ItemDetail(product: widget.product),
                    const SizedBox(
                      height: 10,
                    ),
                    //************** PRODUCT'S COLOR ***************/
                    const Text("Color"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: List.generate(
                        widget.product.colors.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              currentColor = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(
                              milliseconds: 300,
                            ),
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: currentColor == index
                                    ? Colors.white
                                    : widget.product.colors[index],
                                shape: BoxShape.circle,
                                border: currentColor == index
                                    ? Border.all(
                                        color: widget.product.colors[index])
                                    : null),
                            padding: currentColor == index
                                ? const EdgeInsets.all(2)
                                : null,
                            margin: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: widget.product.colors[index],
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Description(description: widget.product.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
