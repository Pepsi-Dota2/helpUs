import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTab,
      this.text,
      this.radius,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.btColor,
      this.width, this.height});
  final VoidCallback onTab;
  final String? text;
  final BorderRadius? radius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final Color? btColor;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(borderRadius: radius, color: btColor),
        child: Center(
            child: Text(
          text ?? "",
          style: TextStyle(
              fontSize: fontSize, fontWeight: fontWeight, color: color),
        )),
      ),
    );
  }
}
