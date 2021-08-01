import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class InternationalizationController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    Locale locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}
