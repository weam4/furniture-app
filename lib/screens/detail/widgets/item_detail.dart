import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/models/products_model.dart';

class ItemDetail extends StatelessWidget {
  final Product product;
  const ItemDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //******* PRODUCT'S NAME **********/
        Text(
          product.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        //******* PRODUCT'S PRICE ,RATING & SELLER **********/
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\$${product.price}",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                //******* RATING PART **********/

                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 25,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 15,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(
                            product.rate.toString(),
                            style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ///************ REVIEW PART ************/
                    Text(
                      product.review,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            ///************ SELLER PART ************/
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: "Seller: ",
                    style: TextStyle(fontSize: 15),
                  ),
                  TextSpan(
                    text: product.seller,
                     style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
