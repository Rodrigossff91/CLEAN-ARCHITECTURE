import 'package:dartz/dartz.dart';

import '../errors/erros.dart';

abstract class Usecase<Output, Input> {
  Future<Either<Failure, Output>> call(Input params);
}

class NoParams {
  const NoParams._internal();
}

const NoParams noParams = NoParams._internal();
