import 'package:flutter/material.dart';
import 'package:provider_ecommerce/models/products_model.dart';
import 'package:provider_ecommerce/providers/favorite_provider.dart';

class DetailAppBar extends StatelessWidget {
  final Product product;
  const DetailAppBar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          const Spacer(),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(15)),
            onPressed: () {
              provider.toggleFavorite(product);
            },
            icon: Icon(
              provider.isExist(product)
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
