import 'package:flutter/material.dart';
import 'package:provider_ecommerce/constants.dart';
import 'package:provider_ecommerce/providers/favorite_provider.dart';
import 'package:provider_ecommerce/screens/nav_bar_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorite;
    Widget content = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/noFav.png'),
          const Text(
            'Nothing Here Yet!',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
          const Text(
            'Try to add products you like',
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
                  final favItems = finalList[index];
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
                                    favItems.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              //************** NAME, CATEGORY & PRICE OF PRODUCT ***************/
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favItems.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    favItems.category,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                        color: Colors.grey.shade400),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "\$${favItems.price}",
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
                      //**************** DELETE ICON  **************/
                      Positioned(
                        top: 40,
                        right: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                finalList.removeAt(index);
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 40,
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
          "Favorite",
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
