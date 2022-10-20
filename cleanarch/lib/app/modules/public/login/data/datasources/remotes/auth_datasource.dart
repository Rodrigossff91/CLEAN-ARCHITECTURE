import 'package:dartz/dartz.dart';

import '../../../domain/errors/auth_failure.dart';

abstract class AuthDatasource {
  Future<Either<AuthFailure, bool>> auth(String url);
}
