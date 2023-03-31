import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/errors/auth_failure.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRespositoryImpl implements AuthRespository {
  AuthRespositoryImpl(this.dataSource);

  final AuthDatasource dataSource;

  @override
  Future<Either<AuthFailure, bool>> auth(String url) async {
    try {
      final result = await dataSource.auth(url);
      return result;
    } on AuthenticateFailure catch (e) {
      return Left(e);
    } on GenericFailure catch (e) {
      return Left(e);
    }
  }
}
