import 'package:app_fastfood/src/config/router/app_router.gr.dart';
import 'package:app_fastfood/src/feature/presentapp/presentation%20/widget/getstart.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetStarted(
      onClick: () {
        context.router.push(ChoiceEntryRoute());
      },
      text: 'Get Started',
    ));
  }
}
