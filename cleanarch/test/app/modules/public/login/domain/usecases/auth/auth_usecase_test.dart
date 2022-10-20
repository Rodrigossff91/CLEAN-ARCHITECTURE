import 'package:cleanarch/app/modules/public/login/domain/errors/auth_failure.dart';
import 'package:cleanarch/app/modules/public/login/domain/repositories/auth_repository.dart';
import 'package:cleanarch/app/modules/public/login/domain/usecases/auth/auth_usecase_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_usecase_test.mocks.dart';

@GenerateMocks([AuthRespository])
main() {
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

    var result = await authUseCaseImpl('aaaaaa aaaaaaaa aaaaaa');
    expect(result.fold((l) => id, (r) => r), true);
    verify(authRespository.auth('aaaaaa')).called(1);
  });

  test('Deve retornar uma falha ao tentar logar', () async {
    when(authRespository.auth('')).thenThrow((_) async => throw Exception());

    var result = await authUseCaseImpl('aaaaaa aaaaaaaa aaaaaa');

    expect(result.leftMap((l) => l is AuthenticateFailure), left(true));
    verify(authRespository.auth('aaaaaa')).called(1);
  });

  test('Deve retornar uma falha se o parametro qrcode nao for valido',
      () async {
    when(authRespository.auth('')).thenAnswer((_) async => throw Exception());

    var result = await authUseCaseImpl('');

    expect(result.leftMap((l) => l is CredencialInvalidFailure), left(true));
    verifyNever(authRespository.auth('aaaaaa'));
  });
}
