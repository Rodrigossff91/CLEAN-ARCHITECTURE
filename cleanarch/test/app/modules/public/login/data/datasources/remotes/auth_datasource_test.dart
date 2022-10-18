import 'package:cleanarch/app/core/appClient/custom_dio.dart';
import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth/auth_datasource_remote.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_datasource_test.mocks.dart';

@GenerateMocks([CustomDio])
main() async {
  late CustomDio customDio;
  late AuthtDatasourceRemote authtDatasourceRemote;
  setUp(() {
    customDio = MockCustomDio();
    authtDatasourceRemote = AuthtDatasourceRemote(dio: customDio);
  });
  test('Deve efetuar o login passando qrcode', () async {
    //final faker = QrcodeFactory();

    final httpResponse = ResponseBody.fromString(
      '',
      200,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
    when(customDio.get('aaaaaa')).thenAnswer((_) async => Response(
        requestOptions: RequestOptions(path: httpResponse.toString())));

    //faker.generateFakeList(length: 2));

    var result = await authtDatasourceRemote.auth('aaaaaa');
    expect(result.fold((l) => id, (r) => r), true);
    verify(authtDatasourceRemote.auth('aaaaaa')).called(1);
  }, skip: true);

//   test('Deve retornar uma falha ao tentar logar', () async {
//     when(authRespository.auth('aaaaaa'))
//         .thenThrow((_) async => throw Exception());

//     var result = await authRespository.auth('aaaaaa');

//     expect(result.leftMap((l) => l is AuthenticateFailure), left(true));
//     verify(authRespository.auth('aaaaaa')).called(1);
//   });
//
}
