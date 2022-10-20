import 'package:cleanarch/app/modules/public/login/domain/errors/auth_failure.dart';
import 'package:dartz/dartz.dart';

import '../../../../../../core/usecase/usecase.dart';

abstract class AuthUseCase implements Usecase<bool, String> {
  @override
  Future<Either<AuthFailure, bool>> call(String url);
}
