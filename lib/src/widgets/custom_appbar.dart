import 'package:flutter/material.dart';
import 'package:tebiki/src/utils/constants.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final bool showActions;
  const CustomAppbar({
    super.key,
    this.showActions = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Tebiki.ai"),
      centerTitle: true,
      elevation: 0,
      toolbarHeight: kCustomToolbarHeight,
      actions: showActions
          ? [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              )
            ]
          : [],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kCustomToolbarHeight);
}
