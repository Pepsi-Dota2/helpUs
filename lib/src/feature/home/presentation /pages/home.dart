import 'package:app_fastfood/src/feature/home/presentation%20/widget/category/category.dart';
import 'package:app_fastfood/src/feature/home/presentation%20/widget/search_bar.dart';
import 'package:app_fastfood/src/widget/custom_card_job.dart';
import 'package:app_fastfood/src/widget/custom_card_services.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(),
              Text("Help us"),
              CustomCardServices(),
              Gap(20),
              Text("Category"),
              Category(),
              Text("Categories"),
              const CustomCardServices( text: "10% Off",),
              const Gap(40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("Our Service"), Text("See All")],
              ),
              CardService()
            ],
          ),
        ),
      ),
    );
  }
}