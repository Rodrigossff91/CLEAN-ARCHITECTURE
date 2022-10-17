import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/erros/auth_failure.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthRespositoryImpl implements AuthRespository {
  AuthRespositoryImpl(this.dataSource);

  final AuthDatasource dataSource;

  @override
  Future<Either<AuthFailure, bool>> auth(String url) async =>
      await dataSource.auth(url);
}
