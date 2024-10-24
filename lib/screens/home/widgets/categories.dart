import 'package:flutter/material.dart';
import 'package:provider_ecommerce/models/categories_model.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
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
                  ? Colors.blue.shade200
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
                  
                  style: const TextStyle(
                    fontSize: 10,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
