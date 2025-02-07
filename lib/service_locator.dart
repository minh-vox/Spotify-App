import 'package:get_it/get_it.dart';

import 'data/data.dart';
import 'domain/domain.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl(),
  );

  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(),
  );
}
