import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.description,
      required this.image,
      required this.review,
      required this.seller,
      required this.price,
      required this.colors,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> products = [
  Product(
      title: 'sofa 1',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/s1.jpg",
      review: "(320 Reviews)",
      seller: "tariq islam",
      price: 120,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Sofa",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'sofa 2',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/s2.jpg",
      review: "(320 Reviews)",
      seller: "tariq islam",
      price: 120,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Sofa",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'sofa 3',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/s3.jpg",
      review: "(320 Reviews)",
      seller: "tariq islam",
      price: 120,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Sofa",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'basse 1',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/b1.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Basse",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'basse 2',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/b2.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Basse",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'basse 3',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/b3.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Basse",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'nice tablelamp',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/tl1.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Tablelamp",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'nice tablelamp',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/tl2.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Tablelamp",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'elegant c-piece',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/c1.jpg",
      review: "(320 Reviews)",
      seller: "noor",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Centerpiece",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'elegant c-piece',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/c2.jpg",
      review: "(320 Reviews)",
      seller: "noor",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Centerpiece",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t1.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t2.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
];

final List<Product> all = [
  Product(
    title: 'nice tablelamp',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/tl1.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Tablelamp",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'basse 3',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/b3.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Basse",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'comfortable table',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/t1.jpg",
    review: "(320 Reviews)",
    seller: "Hadi",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Table",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
      title: 'sofa 3',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/s3.jpg",
      review: "(320 Reviews)",
      seller: "tariq islam",
      price: 120,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Sofa",
      rate: 4.8,
      quantity: 1),
];

final List<Product> sofa = [
  Product(
      title: 'sofa 1',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/s1.jpg",
      review: "(320 Reviews)",
      seller: "tariq islam",
      price: 120,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Sofa",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'sofa 2',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/s2.jpg",
      review: "(320 Reviews)",
      seller: "tariq islam",
      price: 120,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Sofa",
      rate: 4.8,
      quantity: 1),
  Product(
    title: 'sofa 3',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/s3.jpg",
    review: "(320 Reviews)",
    seller: "tariq islam",
    price: 120,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Sofa",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'sofa 3',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/s4.jpg",
    review: "(320 Reviews)",
    seller: "tariq islam",
    price: 120,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Sofa",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'sofa 3',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/s5.jpg",
    review: "(320 Reviews)",
    seller: "tariq islam",
    price: 120,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Sofa",
    rate: 4.8,
    quantity: 1,
  ),
];

final List<Product> table = [
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t1.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t2.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t3.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t4.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'comfortable table',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/t5.jpg",
      review: "(320 Reviews)",
      seller: "Hadi",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Table",
      rate: 4.8,
      quantity: 1),
];

final List<Product> basse = [
  Product(
      title: 'basse 1',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/b1.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Basse",
      rate: 4.8,
      quantity: 1),
  Product(
      title: 'basse 2',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/b2.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Basse",
      rate: 4.8,
      quantity: 1),
  Product(
    title: 'basse 3',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/b3.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Basse",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'basse 4',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/b4.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Basse",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'basse 5',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/b5.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Basse",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'basse 6',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/b6.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Basse",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'basse 7',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/b7.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Basse",
    rate: 4.8,
    quantity: 1,
  ),
];

final List<Product> tablelamp = [
  Product(
      title: 'nice tablelamp',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/tl1.jpg",
      review: "(320 Reviews)",
      seller: "ahmad",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Tablelamp",
      rate: 4.8,
      quantity: 1),
  Product(
    title: 'nice tablelamp',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/tl2.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Tablelamp",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'nice tablelamp',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/tl3.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Tablelamp",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'nice tablelamp',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/tl4.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Tablelamp",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: 'nice tablelamp',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/tl5.jpg",
    review: "(320 Reviews)",
    seller: "ahmad",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Tablelamp",
    rate: 4.8,
    quantity: 1,
  ),
];

final List<Product> centerpiece = [
  Product(
      title: 'elegant c-piece',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
      image: "images/c1.jpg",
      review: "(320 Reviews)",
      seller: "noor",
      price: 75,
      colors: [
        Colors.black,
        const Color.fromARGB(255, 228, 245, 42),
        const Color.fromARGB(255, 4, 241, 245),
      ],
      category: "Centerpiece",
      rate: 4.8,
      quantity: 1),
  Product(
    title: 'elegant c-piece',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/c2.jpg",
    review: "(320 Reviews)",
    seller: "noor",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Centerpiece",
    rate: 4.8,
    quantity: 1,
  ),
   Product(
    title: 'elegant c-piece',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/c3.jpg",
    review: "(320 Reviews)",
    seller: "noor",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Centerpiece",
    rate: 4.8,
    quantity: 1,
  ),
   Product(
    title: 'elegant c-piece',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/c4.jpg",
    review: "(320 Reviews)",
    seller: "noor",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Centerpiece",
    rate: 4.8,
    quantity: 1,
  ),
   Product(
    title: 'elegant c-piece',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer laoreet viverra ornare. Sed scelerisque fringilla dui, et fermentum nisl faucibus vel. Maecenas semper bibendum mauris. Curabitur non sapien ut augue maximus pulvinar vel eget eros. Nunc feugiat congue imperdiet. Fusce laoreet blandit elit. Phasellus ac eros ante. Vestibulum eu malesuada libero.',
    image: "images/c5.jpg",
    review: "(320 Reviews)",
    seller: "noor",
    price: 75,
    colors: [
      Colors.black,
      const Color.fromARGB(255, 228, 245, 42),
      const Color.fromARGB(255, 4, 241, 245),
    ],
    category: "Centerpiece",
    rate: 4.8,
    quantity: 1,
  ),
];
