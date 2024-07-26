import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:app_fastfood/src/core/constant/font/font_size.dart';
import 'package:app_fastfood/src/widget/custom_button_login.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key, required this.onClick, this.text});
  final Function() onClick;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/assets/getstarted-app.jpg",
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        CustomButton(
                          onTab: onClick,
                          height: 60,
                          text: text,
                          btColor: AppColors.orange,
                          radius: BorderRadius.circular(30),
                          fontSize: CustomFont.body,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
