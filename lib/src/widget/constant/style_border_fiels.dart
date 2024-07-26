
import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:flutter/material.dart';

class CustomBorderTextField {
   static final border = OutlineInputBorder(
      borderSide: const  BorderSide(
        color: AppColors.ebony,
      ),
      borderRadius: BorderRadius.circular(10)
      );
}