import 'package:app_fastfood/src/config/router/app_router.gr.dart';
import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:app_fastfood/src/core/constant/font/font_size.dart';
import 'package:app_fastfood/src/core/constant/font/font_weight.dart';
import 'package:app_fastfood/src/core/constant/from_key/from_key.dart';
import 'package:app_fastfood/src/feature/login/presentation%20/widget/auth_file.dart';
import 'package:app_fastfood/src/feature/sigin/presentation%20/widget/auth_file.dart';
import 'package:app_fastfood/src/widget/custom_button_login.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginWidget(
            title: "Login",
            formKey: formKey,
            onClick: () {
              final formState = formKey.currentState;
              if (formState != null && formState.saveAndValidate()) {
                context.router.push(const HomeRoute());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Field can't be empty"),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
