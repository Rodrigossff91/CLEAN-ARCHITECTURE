import 'package:dartz/dartz.dart';

import '../erros/auth_failure.dart';

abstract class AuthRespository {
  Future<Either<AuthFailure, bool>> auth(String url);
}
