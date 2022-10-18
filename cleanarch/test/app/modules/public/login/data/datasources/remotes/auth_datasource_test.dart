import 'package:cleanarch/app/core/appClient/custom_dio.dart';
import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth/auth_datasource_remote.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([CustomDio])
main() async {
  late CustomDio customDio;
  late AuthtDatasourceRemote authtDatasourceRemote;
  setUp(() {
    final dio = Dio(BaseOptions());
    authtDatasourceRemote = AuthtDatasourceRemote(dio: dio as CustomDio);
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

    final response = await dio.get(path);

    print(response.data);
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
