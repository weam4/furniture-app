import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/providers/cart_provider.dart';
import 'package:provider_ecommerce/screens/cart/check_out.dart';
import 'package:provider_ecommerce/screens/nav_bar_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    //**************** FOR PRODUCT QUANTITY ********************/
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQnt(index)
                : provider.decrementQnt(index);
          });
        },
        child: Icon(
          icon,
          size: 20,
        ),
      );
    }

    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/noitem.png'),
          const Text(
            'Have not do shopping yet !?',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          ),
          const Text(
            'Let\'s Add Products To Your Cart',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 16),
          ),
        ],
      ),
    );

    if (finalList.isNotEmpty) {
      content = SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: finalList.length,
                itemBuilder: (context, index) {
                  final cartItems = finalList[index];
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                          bottom: 10,
                          top: 5,
                        ),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              //************** IMAGE OF PRODUCT ***************/
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      cartItems.image,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              //************** NAME, CATEGORY & PRICE OF PRODUCT ***************/
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cartItems.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    cartItems.category,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.grey.shade400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$${cartItems.price}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      //**************** DELETE ICON AND QUANTITY BUTTON **************/
                      Positioned(
                        top: 20,
                        right: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                finalList.removeAt(index);
                                setState(() {});
                              },
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                color: kContentColor,
                                border: Border.all(
                                  color: const Color.fromARGB(255, 235, 215, 189),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  productQuantity(Icons.add, index),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    cartItems.quantity.toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  productQuantity(Icons.remove, index),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const CheckOut(),
          ],
        ),
      );
    }
    return Scaffold(
      backgroundColor: kContentColor,
      appBar: AppBar(
        //backgroundColor: kAppbarColor,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyNavBarScreen(),
                ),
              );
            },
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: content,
    );
  }
}
