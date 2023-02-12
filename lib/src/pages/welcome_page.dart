import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tebiki/src/utils/routes/routes.dart';
import 'package:tebiki/src/utils/theme/app_theme.dart';
import 'package:tebiki/src/widgets/custom_appbar.dart';
import 'package:tebiki/src/widgets/scrollable_container.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: ScrollableContainer(
        children: [
          Text(
            "Welcome to\nProblem-solving!",
            style: AppTheme.h4.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            "Get help from AI to find a solution",
            style: AppTheme.title.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 35),
          Text(
            "WATCH THE VIDEO WITH EXPLANATIONS FOR PROBLEM SOLVING",
            style: AppTheme.title.copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 12,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image_outlined,
                  color: AppTheme.primaryColor,
                  size: 40,
                ),
                SizedBox(height: 15),
                Text(
                  "Video",
                  style: AppTheme.body.copyWith(color: AppTheme.primaryColor),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.welcome),
            child: const Text("Next"),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
