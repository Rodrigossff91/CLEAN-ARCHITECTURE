// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanarch/app/core/appClient/custom_dio.dart';
import 'package:cleanarch/app/modules/public/login/domain/erros/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../auth_datasource.dart';

class AuthtDatasourceRemote implements AuthDatasource {
  CustomDio dio;
  AuthtDatasourceRemote({
    required this.dio,
  });
  @override
  Future<Either<AuthFailure, bool>> auth(String url) async {
    Response response;

    try {
      response = await dio.get('');

      return Right(response.data);
    } catch (e) {
      return Left(AuthenticateFailure());
    }
  }
}
