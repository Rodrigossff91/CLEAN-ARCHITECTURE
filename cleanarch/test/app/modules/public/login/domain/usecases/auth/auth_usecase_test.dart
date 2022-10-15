import 'package:cleanarch/app/modules/public/login/domain/erros/auth_failure.dart';
import 'package:cleanarch/app/modules/public/login/domain/repositories/auth_repository.dart';
import 'package:cleanarch/app/modules/public/login/domain/usecases/auth/auth_usecase_impl.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_usecase_test.mocks.dart';

@GenerateMocks([AuthRespository])
main() {
  test('Deve efetuar o login passando qrcode', () async {
    final repository = MockAuthRespository();
    final usecase = AuthUseCaseImpl(repository);

    //final faker = QrcodeFactory();
    when(repository.auth('')).thenAnswer((_) async => true);

    //faker.generateFakeList(length: 2));

    var result = await usecase('');
    expect(result.fold((l) => id, (r) => r), true);
  });

  test('Deve retornar uma falha ao tentar logar', () async {
    final repository = MockAuthRespository();
    final usecase = AuthUseCaseImpl(repository);

    when(repository.auth('')).thenAnswer((_) async => throw Exception());

    var result = await usecase('');

    expect(
        result.leftMap((l) => AuthenticateFailure), left(AuthenticateFailure));
  });
}
