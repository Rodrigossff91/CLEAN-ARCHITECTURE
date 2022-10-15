import 'package:cleanarch/app/modules/public/login/data/datasources/remotes/auth_datasource.dart';

import '../../domain/repositories/auth_repository.dart';

class AuthRespositoryImpl implements AuthRespository {
  AuthRespositoryImpl(this.dataSource);

  final AuthDatasource dataSource;

  @override
  Future<bool> auth(String url) => dataSource.auth(url);
}
