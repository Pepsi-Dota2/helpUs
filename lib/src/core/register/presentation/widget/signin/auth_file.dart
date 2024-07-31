import 'package:app_fastfood/src/config/router/app_router.gr.dart';
import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:app_fastfood/src/core/constant/font/font_size.dart';
import 'package:app_fastfood/src/widget/custom_button_login.dart';
import 'package:app_fastfood/src/widget/custom_from_fileds.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormBuilderState>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: FormBuilder(
        key: formKey,
        child: Column(
          children: [
            Text(
              title ?? "",
              style: const TextStyle(
                color: AppColors.black,
                fontSize: 40, // Adjust as needed∏
                fontWeight: FontWeight.bold, // Adjust as needed
              ),
            ),
            const Gap(60),
            CustomFormField(
              name: 'Name',
              label: "Name",
              customColor: AppColors.black,
              enable:
                  const OutlineInputBorder(), // Replace with your custom border
              focus:
                  const OutlineInputBorder(), // Replace with your custom border
              validators: [FormBuilderValidators.required()],
            ),
            const Gap(15),
            CustomFormField(
              name: 'Email',
              label: "Email",
              customColor: AppColors.black,
              enable:
                  const OutlineInputBorder(), // Replace with your custom border
              focus:
                  const OutlineInputBorder(), // Replace with your custom border
              validators: [
                FormBuilderValidators.required(
                  errorText: 'Email cannot be empty',
                ),
                FormBuilderValidators.email(
                  errorText: 'Please enter a valid email address',
                ),
              ],
            ),
            const Gap(15),
            CustomFormField(
              name: 'Password',
              label: "Password",
              customColor: AppColors.black,
              enable:
                  const OutlineInputBorder(), 
              focus:
                  const OutlineInputBorder(), 
              validators: [
                FormBuilderValidators.required(
                  errorText: 'Password cannot be empty',
                ),
              ],
            ),
            const Gap(30),
            CustomButton(
              height: 50,
              btColor: AppColors.blackBlue,
              onTab: () {
                formKey.currentState?.saveAndValidate();
                formKey.currentState?.validate();
                context.router.push(const HomeRoute());
                
              },
              text: title,
              color: AppColors.white,
              fontSize: CustomFont.body,
              radius: BorderRadius.circular(8),
            )
          ],
        ),
      ),
    );
  }
}
