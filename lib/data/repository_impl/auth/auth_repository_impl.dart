import 'package:dartz/dartz.dart';
import 'package:spotify/data/data.dart';

import '../../../domain/domain.dart';
import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(this._registerDataMapper);

  final RegisterDataMapper _registerDataMapper;
  @override
  Future<Either> signin(LoginEntity login) async {
    return await getIt<AuthSupaBaseService>()
        .signin(login.email, login.password);
  }

  @override
  Future<Either> signup(RegisterEntity register) async {
    return await getIt<AuthSupaBaseService>()
        .signup(_registerDataMapper.mapToData(register));
  }
}
