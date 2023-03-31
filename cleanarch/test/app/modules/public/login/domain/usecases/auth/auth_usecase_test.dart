import 'package:cleanarch/app/modules/public/login/domain/errors/auth_failure.dart';
import 'package:cleanarch/app/modules/public/login/domain/repositories/auth_repository.dart';
import 'package:cleanarch/app/modules/public/login/domain/usecases/auth/auth_usecase_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_usecase_test.mocks.dart';

@GenerateMocks([AuthRespository])
void main() {
  late AuthUseCaseImpl authUseCaseImpl;
  late AuthRespository authRespository;
  setUp(() {
    authRespository = MockAuthRespository();
    authUseCaseImpl = AuthUseCaseImpl(authRespository);
  });
  test('Deve efetuar o login passando qrcode', () async {
    //final faker = QrcodeFactory();
    when(authRespository.auth('aaaaaa'))
        .thenAnswer((_) async => const Right(true));

    //faker.generateFakeList(length: 2));

    final result = await authUseCaseImpl('aaaaaa aaaaaaaa aaaaaa');
    expect(result.fold((l) => id, (r) => r), true);
    verify(authRespository.auth('aaaaaa')).called(1);
  });

  test('Deve retornar uma falha ao tentar logar', () async {
    when(authRespository.auth('aaaaaa'))
        .thenAnswer((_) => throw AuthenticateFailure());

    final result = await authUseCaseImpl('aaaaaa aaaaaaaa aaaaaa');

    expect(result.leftMap((l) => l is AuthenticateFailure), left(true));
    verify(authRespository.auth('aaaaaa')).called(1);
  });

  test('Deve retornar falha de servidor', () async {
    when(authRespository.auth('aaaaaa'))
        .thenAnswer((_) => throw ServerFailure());

    final result = await authUseCaseImpl('aaaaaa aaaaaaaa aaaaaa');

    expect(result.leftMap((l) => l is ServerFailure), left(true));
    verify(authRespository.auth('aaaaaa')).called(1);
  });

  test('Deve retornar uma falha se o parametro qrcode nao for valido',
      () async {
    when(authRespository.auth(''))
        .thenAnswer((_) => throw CredencialInvalidFailure());

    final result = await authUseCaseImpl('');

    expect(result.leftMap((l) => l is CredencialInvalidFailure), left(true));
    verifyNever(authRespository.auth('aaaaaa'));
  });

  test('Deve retornar uma falha generica', () async {
    when(authRespository.auth('aaaaaa'))
        .thenAnswer((_) => throw GenericFailure());

    final result = await authUseCaseImpl('aaaaaa');

    expect(result.leftMap((l) => l is GenericFailure), left(true));
    verify(authRespository.auth('aaaaaa')).called(1);
  });
}
