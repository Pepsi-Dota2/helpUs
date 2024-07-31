import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:flutter/material.dart';

class CustomCardServices extends StatelessWidget {
  const CustomCardServices({super.key, this.text, this.width, this.height, this.color});
  final String? text;
  final double? width;
  final double? height;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                blurRadius: 4,
                offset: Offset(0, 3),
              ),
            ],
            image: const DecorationImage(
              image: AssetImage("images/assets/kaphao.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: width ,
          height: height,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color
          ),
          child:  Text( text ?? "" ,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
