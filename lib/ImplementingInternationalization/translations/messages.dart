import 'package:get/route_manager.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello'},
        'ur_PK': {'hello': 'ہیلو'},
        'fr_FR': {'hello': 'Bonjour'},
      };
}
