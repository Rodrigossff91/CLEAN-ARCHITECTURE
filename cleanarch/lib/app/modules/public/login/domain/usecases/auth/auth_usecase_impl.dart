import 'package:cleanarch/app/modules/public/login/domain/erros/auth_failure.dart';
import 'package:cleanarch/app/modules/public/login/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import 'auth_usecase.dart';

class AuthUseCaseImpl implements AuthUseCase {
  final AuthRespository authRespository;

  AuthUseCaseImpl(this.authRespository);
  @override
  Future<Either<AuthFailure, bool>> call(String url) async {
    try {
      final stores = await authRespository.auth(url);
      return Right(stores);
    } catch (e) {
      return Left(AuthenticateFailure());
    }
  }
}
