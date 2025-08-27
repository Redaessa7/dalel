import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/services_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().save(key: "onBoardingVisitedKey", value: true);
}
