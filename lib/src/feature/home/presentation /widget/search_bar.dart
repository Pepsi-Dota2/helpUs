import 'package:flutter/material.dart';
import 'package:searchbar_animation/const/dimensions.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBarAnimation(
      durationInMilliSeconds: Dimensions.t200,
      textEditingController: TextEditingController(),
      isOriginalAnimation: true,
      enableKeyboardFocus: true,
      onExpansionComplete: () {
        debugPrint('do something just after searchbox is opened.');
      },
      onCollapseComplete: () {
        debugPrint('do something just after searchbox is closed.');
      },
      onPressButton: (isSearchBarOpens) {
        debugPrint(
            'do something before animation started. It\'s the ${isSearchBarOpens ? 'opening' : 'closing'} animation');
      },
      trailingWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
      secondaryButtonWidget: const Icon(
        Icons.close,
        size: 20,
        color: Colors.black,
      ),
      buttonWidget: const Icon(
        Icons.search,
        size: 20,
        color: Colors.black,
      ),
    );
  }
}
