import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tebiki/src/utils/routes/pages.dart';
import 'package:tebiki/src/utils/routes/routes.dart';
import 'package:tebiki/src/utils/theme/app_theme.dart';
import 'package:tebiki/src/utils/translations/app_translations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      title: 'tebiki',
      initialRoute: Routes.home,
      defaultTransition: Transition.fade,
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppPages.pages,
    );
  }
}
