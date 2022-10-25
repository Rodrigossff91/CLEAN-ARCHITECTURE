import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth_datasource.dart';
import 'package:cleanarch/app/modules/public/login/data/repositories/auth_repository_impl.dart';
import 'package:cleanarch/app/modules/public/login/domain/errors/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_impl_test.mocks.dart';

@GenerateMocks([AuthDatasource])
main() {
  late AuthDatasource datasource;
  late AuthRespositoryImpl authRespository;
  setUp(() {
    datasource = MockAuthDatasource();
    authRespository = AuthRespositoryImpl(datasource);
  });
  test('Deve efetuar o login passando qrcode', () async {
    //final faker = QrcodeFactory();
    when(datasource.auth('aaaaaa')).thenAnswer((_) async => const Right(true));

    //faker.generateFakeList(length: 2));

    var result = await authRespository.auth('aaaaaa');
    expect(result.fold((l) => id, (r) => r), true);
    verify(datasource.auth('aaaaaa')).called(1);
  });

  test('Deve retornar uma falha ao tentar logar', () async {
    when(authRespository.auth('aaaaaa'))
        .thenAnswer((_) => throw AuthenticateFailure());

    var result = await authRespository.auth('aaaaaa');

    expect(result.leftMap((l) => l is AuthenticateFailure), left(true));
    verify(authRespository.auth('aaaaaa'));
  });

  test('Deve retornar uma falha generica', () async {
    when(authRespository.auth('aaaaaa'))
        .thenAnswer((_) => throw GenericFailure());

    var result = await authRespository.auth('aaaaaa');

    expect(result.leftMap((l) => l is GenericFailure), left(true));
    verify(authRespository.auth('aaaaaa')).called(1);
  });
}
