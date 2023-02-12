import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tebiki/src/utils/routes/routes.dart';
import 'package:tebiki/src/utils/theme/app_theme.dart';
import 'package:tebiki/src/widgets/custom_appbar.dart';
import 'package:tebiki/src/widgets/scrollable_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        showActions: false,
      ),
      body: ScrollableContainer(
        children: [
          Container(
            height: Get.width * 0.8,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home.png'),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            "Hi,",
            style: AppTheme.h4.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "everybody!",
            style: AppTheme.h5.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            "This is your problem-solving app",
            style: AppTheme.title.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => Get.toNamed(Routes.welcome),
            child: const Text("Continue"),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
