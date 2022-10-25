// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../../../core/errors/erros.dart';

abstract class AuthFailure implements Failure {
  @override
  final String message;

  AuthFailure(this.message);

  @override
  String toString() => 'AuthFailure(message: $message)';
}

class AuthenticateFailure implements AuthFailure {
  @override
  String get message => 'Falha ao autenticar usuario ';
}

class CredencialInvalidFailure implements AuthFailure {
  @override
  String get message => 'Credencial esta invalida ';
}

class ServerFailure implements AuthFailure {
  @override
  String get message => 'Falha de servidor';
}

class GenericFailure implements AuthFailure {
  @override
  String get message => 'Falha Generica';
}
