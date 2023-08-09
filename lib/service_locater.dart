import 'package:get_it/get_it.dart';

import 'services/news_service.dart';


final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NewsService());
}
