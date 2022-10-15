import '../../../../../core/errors/erros.dart';

abstract class AuthFailure implements Failure {
  @override
  final String message;

  AuthFailure(this.message);
}

class AuthenticateFailure implements AuthFailure {
  @override
  String get message => 'Falha ao autenticar usuario ';
}
