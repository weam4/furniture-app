import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/models/products_model.dart';
import 'package:provider_ecommerce/providers/cart_provider.dart';

class AddtoCart extends StatefulWidget {
  final Product product;
  const AddtoCart({super.key, required this.product});

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: kContentColor,
          borderRadius: BorderRadius.circular(50),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //*************** QUANTITY PART IN ADD TO CART BTN ********************/
            Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 3),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      if (currentIndex != 1) {
                        setState(() {
                          currentIndex--;
                        });
                      }
                    },
                    icon: const Icon(Icons.remove),
                    iconSize: 18,
                    color: Colors.black,
                    
                  ),
                  Text(
                    //widget.product.quantity.toString(),
                    currentIndex.toString(),
                    style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        currentIndex++;
                      });
                    },
                    icon: const Icon(Icons.add),
                    iconSize: 18,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            ///************ ADD TO CART PART **************/
            GestureDetector(
              onTap: () {
                provider.toggleFavorite(widget.product);
                const snackBar = SnackBar(
                  content: Text(
                    'Successfully added!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(50),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  "Add To Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
