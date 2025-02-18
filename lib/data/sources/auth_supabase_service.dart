import 'package:dartz/dartz.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../model/register_data.dart';

abstract class AuthSupaBaseService {
  Future<Either> signin(
    String email,
    String password,
  );
  Future<Either> signup(RegisterData user);
}

class AuthSupaBaseServiceImpl extends AuthSupaBaseService {
  final SupabaseClient _supabase = Supabase.instance.client;

  @override
  Future<Either> signin(String email, String password) async {
    try {
      await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      return const Right('Signin was Successful');
    } on AuthException catch (e) {
      return left(e.message);
    }
  }

  @override
  Future<Either> signup(RegisterData register) async {
    try {
      await _supabase.auth.signUp(
        email: register.email,
        password: register.password,
        data: {
          'userName': register.userName,
        },
      );

      await _supabase.from('Users').insert(
        {
          'userName': register.userName,
          'email': register.email,
        },
      );

      return const Right('Signup was Successful');
    } on AuthException catch (e) {
      return left(e.message);
    }
  }
}
