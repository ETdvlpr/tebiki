import 'package:flutter/material.dart';
import 'package:tebiki/src/utils/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tebiki.ai"),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8,
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
            Text(
              "everybody!",
              style: AppTheme.h5.copyWith(color: Colors.white),
            ),
            Text(
              "This is your problem-solving app",
              style: AppTheme.title.copyWith(color: Colors.white),
            ),
            ElevatedButton(onPressed: () {}, child: const Text("Continue")),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
