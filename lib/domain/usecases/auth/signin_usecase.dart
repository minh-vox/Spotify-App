import 'package:dartz/dartz.dart';

import '../../../resource/resource.dart';
import '../../../service_locator.dart';
import '../../domain.dart';

class SigninUseCase implements UseCase<Either, LoginEntity> {
  @override
  Future<Either> call({LoginEntity? params}) async {
    return getIt<AuthRepository>().signin(params!);
  }
}
