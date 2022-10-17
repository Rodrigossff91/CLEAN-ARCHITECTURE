import 'package:cleanarch/app/modules/public/login/domain/erros/auth_failure.dart';
import 'package:cleanarch/app/modules/public/login/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import 'auth_usecase.dart';

class AuthUseCaseImpl implements AuthUseCase {
  final AuthRespository authRespository;

  AuthUseCaseImpl(this.authRespository);
  @override
  Future<Either<AuthFailure, bool>> call(String url) async {
    dynamic sucess = true;
    try {
      var urls = url.split(' ');
      if (url.isNotEmpty) {
        sucess = await authRespository.auth(urls[0]);

        return sucess;
      } else {
        return Left(CredencialInvalidFailure());
      }
    } catch (e) {
      return Left(AuthenticateFailure());
    }
  }
}
