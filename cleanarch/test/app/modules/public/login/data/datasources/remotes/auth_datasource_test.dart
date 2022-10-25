import 'package:cleanarch/app/core/appClient/custom_dio.dart';
import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth/auth_datasource_remote.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';

import 'auth_datasource_test.mocks.dart';

@GenerateMocks([CustomDio])
main() async {
  late AuthtDatasourceRemote authtDatasourceRemote;
  setUp(() {
    final dio = MockCustomDio();
    authtDatasourceRemote = AuthtDatasourceRemote(dio: dio);
  });

  test('Deve efetuar o login passando qrcode', () async {
    final dio = Dio(BaseOptions());
    final dioAdapter = DioAdapter(dio: dio);

    const path = 'https://example.com';

    dioAdapter.onGet(
      path,
      (server) => server.reply(
        200,
        {'message': 'Success!'},
        // Reply would wait for one-sec before returning data.
        delay: const Duration(seconds: 1),
      ),
    );

    var response = await dio.get(path);
    var result = await authtDatasourceRemote.auth(path);
    expect(response.statusCode, 200);

    expect(result.fold((l) => id, (r) => r), true);
    //  verify(authtDatasourceRemote.auth(path)).called(1);
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
