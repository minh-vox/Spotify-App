import 'package:get_it/get_it.dart';

import 'data/data.dart';
import 'domain/domain.dart';

final getIt = GetIt.instance;

Future<void> initializeDependencies() async {
  getIt.registerSingleton<AuthSupaBaseService>(
    AuthSupaBaseServiceImpl(),
  );

  getIt.registerSingleton<UserDataMapper>(
    UserDataMapper(),
  );
  getIt.registerSingleton<RegisterDataMapper>(
    RegisterDataMapper(),
  );

  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl((getIt<RegisterDataMapper>())),
  );

  getIt.registerSingleton<SignupUseCase>(
    SignupUseCase(),
  );

  getIt.registerSingleton<SigninUseCase>(
    SigninUseCase(),
  );
}
