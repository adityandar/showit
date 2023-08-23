import 'package:showit/core/index.dart';

import 'services.dart';

class ServiceLocator {
  ServiceLocator._();

  static Future<void> setup() async {
    await _registerRepository();
  }

  static Future<void> _registerRepository() async {
    getIt.registerLazySingleton<AuthRepository>(AuthRepositoryImpl.new);
  }
}
