import 'package:dartz/dartz.dart';

import '../../domain.dart';

abstract class AuthRepository {
  Future<Either> signup(RegisterEntity register);
  Future<Either> signin(LoginEntity login);
}
