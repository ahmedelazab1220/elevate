import 'package:get_it/get_it.dart';

import '../../Features/home/data/repos/home_repo_implementation.dart';
import 'api_services.dart';

final serviceLocator = GetIt.instance;

void setup() {
  serviceLocator.registerSingleton<ApiService>(
    ApiService(),
  );
  serviceLocator.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(apiService: serviceLocator<ApiService>()),
  );
}
