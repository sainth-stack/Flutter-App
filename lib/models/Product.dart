// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Laptop",
      price: 60000,
      size: 12,
      description: dummyText,
      image: "assets/images/img1.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Logitech Mouse",
      price: 1500,
      size: 8,
      description: dummyText,
      image: "assets/images/img7.webp",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Redmi mobile",
      price: 1000,
      size: 10,
      description: dummyText,
      image: "assets/images/img2.jpg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "mobile",
      price: 10000,
      size: 11,
      description: dummyText,
      image: "assets/images/img3.jpg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 500,
      size: 12,
      description: dummyText,
      image: "assets/images/img4.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 20000,
    size: 12,
    description: dummyText,
    image: "assets/images/img5.jpg",
    color: Color(0xFFAEAEAE),
  ),
   Product(
    id: 7,
    title: "Office Code",
    price: 60000,
    size: 12,
    description: dummyText,
    image: "assets/images/img2.jpg",
    color: Color(0xFFFB7883),
  ), Product(
    id: 8,
    title: "Mobile",
    price: 2500,
    size: 12,
    description: dummyText,
    image: "assets/images/img5.jpg",
    color: Color.fromARGB(255, 105, 27, 27),
  ), Product(
    id: 9,
    title: "Mouse",
    price: 800,
    size: 12,
    description: dummyText,
    image: "assets/images/img1.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
