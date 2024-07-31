import 'package:app_fastfood/src/core/register/presentation/widget/login/auth_file.dart';
import 'package:app_fastfood/src/core/register/presentation/widget/signin/auth_file.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [LoginWidget(title: "Login")],
      ),
    );
  }
}
