import 'dart:ui';

import 'package:get/get.dart';

class InternationalizationController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    Locale locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
