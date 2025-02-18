import 'package:dartz/dartz.dart';

import '../../../resource/resource.dart';
import '../../../service_locator.dart';
import '../../domain.dart';

class SignupUseCase implements UseCase<Either, RegisterEntity> {
  @override
  Future<Either> call({RegisterEntity? params}) async {
    return getIt<AuthRepository>().signup(params!);
  }
}
