import 'package:app_fastfood/src/core/constant/color/app_color.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardService extends StatelessWidget {
  CardService({super.key});

  final String dateTime = formatDate(DateTime(1989, 2, 1, 15, 40, 10), [HH, ':', nn, ':', ss, z]);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.maxFinite,
      child: Card(
        child: Row(
          children: [
            const Gap(6),
            Container(
              height: 80,
              width: 80,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                image: const DecorationImage(
                  image: AssetImage("images/assets/getstarted-app.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Pain"),
                  const Text("Mr. John"),
                  Text(dateTime),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  alignment: FractionalOffset.center,
                  width: 140,
                  height: 30,
                  decoration: const BoxDecoration(
                    color: AppColors.blue,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16) , bottomLeft: Radius.circular(16))
                  ),
                  child: const Text("600kip / 120 min")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
