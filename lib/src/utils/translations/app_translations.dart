import 'package:get/get.dart';

import 'ar_translation.dart';
import 'en_us_translation.dart';
import 'de_translation.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': enUs,
        'ar': ar,
        'de': de,
      };
}
