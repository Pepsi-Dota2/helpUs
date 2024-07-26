import 'package:app_fastfood/src/config/router/app_router.gr.dart';
import 'package:app_fastfood/src/feature/select_login_or_sigin/presentation%20/widget/choice_entry_app.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChoiceEntryPage extends StatelessWidget {
  const ChoiceEntryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChoiceWidget(
        onClick: (bool Login) {
          if (Login == true) {
            context.router.push(const LoginRoute());
          } else {
            context.router.push(const SignInRoute());
          }
        },
      ),
    );
  }

}
