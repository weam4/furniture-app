import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/models/categories_model.dart';
import 'package:provider_ecommerce/models/products_model.dart';
import 'package:provider_ecommerce/screens/home/widgets/custum_app_bar.dart';
import 'package:provider_ecommerce/screens/home/widgets/image_slider.dart';
import 'package:provider_ecommerce/screens/home/widgets/product_cart.dart';
import 'package:provider_ecommerce/screens/home/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final List<List<Product>> selectedCategory = [
      all,
      sofa,
      basse,
      tablelamp,
      centerpiece,
      table
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //**************** APP BAR ******************/
                const CustumAppBar(),
                const SizedBox(
                  height: 20,
                ),
                //************ SEARCH BAR ***************//
                const MySearchBar(),
                const SizedBox(
                  height: 20,
                ),
                //************ IMAGE SLIDER ***************//
                ImageSlider(
                  currentSlide: currentSlider,
                  onChange: (value) {
                    setState(() {
                      currentSlider = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                //************** CATEGORY SELECTION ****************/
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? kPrimaryColor
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(categories[index].image),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              categories[index].title,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style:  TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: selectedIndex == index
                              ? Color(0xFFFFFFFF)
                              : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                //************** SPECIAL FOR YOU SECTION ****************/
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special for you",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      'see all',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                //************** FOR SHOPPING ITEM ****************/
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.78,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: selectedCategory[selectedIndex].length,
                  itemBuilder: (context, index) => ProductCart(
                      product: selectedCategory[selectedIndex][index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
