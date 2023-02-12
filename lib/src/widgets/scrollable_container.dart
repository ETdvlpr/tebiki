import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tebiki/src/utils/constants.dart';

class ScrollableContainer extends StatelessWidget {
  final List<Widget> children;
  const ScrollableContainer({
    super.key,
    this.children = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        constraints:
            BoxConstraints(minHeight: Get.height - kCustomToolbarHeight),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: children,
        ),
      ),
    );
  }
}
