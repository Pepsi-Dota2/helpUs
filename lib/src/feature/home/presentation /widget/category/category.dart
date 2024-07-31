import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/assets/phutthai.jpg") , fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}