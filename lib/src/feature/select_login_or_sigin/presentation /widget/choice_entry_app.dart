import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:app_fastfood/src/core/constant/font/font_size.dart';
import 'package:app_fastfood/src/core/constant/font/font_weight.dart';
import 'package:app_fastfood/src/widget/custom_button_login.dart';
import 'package:flutter/material.dart';

class ChoiceWidget extends StatelessWidget {
  const ChoiceWidget({super.key, required this.onClick, this.text});
  final Function(bool onLogin) onClick;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            "images/assets/phutthai.jpg",
            fit: BoxFit.contain,
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FnButton("Login", true),
                          FnButton("Sign In", false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  CustomButton FnButton(String? text, bool isLogin) {
    return CustomButton(
      fontSize: CustomFont.body,
      fontWeight: CustomFontWeight.bold,
      color: AppColors.white,
      width: 200,
      height: 60,
      onTab: () =>
          onClick(isLogin), // Call onClick with the appropriate boolean value
      text: text,
      btColor: AppColors.indigo,
      radius: BorderRadius.circular(10),
    );
  }
}
