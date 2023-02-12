import 'package:get/route_manager.dart';
import 'package:tebiki/src/pages/homepage.dart';
import 'package:tebiki/src/utils/routes/routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
    ),
  ];
}
