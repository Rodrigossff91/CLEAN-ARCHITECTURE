import 'package:cleanarch/app/modules/public/login/domain/erros/auth_failure.dart';
import 'package:dartz/dartz.dart';

import '../auth_datasource.dart';

class AuthtDatasourceRemote implements AuthDatasource {
  @override
  Future<Either<AuthFailure, bool>> auth(String url) {
    // TODO: implement auth
    throw UnimplementedError();
  }
}
