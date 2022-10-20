import 'package:dartz/dartz.dart';

import '../errors/auth_failure.dart';

abstract class AuthRespository {
  Future<Either<AuthFailure, bool>> auth(String url);
}
