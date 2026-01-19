import 'package:artefacta_app/core/database/cache/cache_helpers.dart';
import 'package:artefacta_app/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt <CacheHelper> ().saveData(key: 'isOnBoardingVisited', value: true);
}
