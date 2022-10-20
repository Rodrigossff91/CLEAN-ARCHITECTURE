// Mocks generated by Mockito 5.3.1 from annotations
// in cleanarch/test/app/modules/public/login/domain/usecases/auth/auth_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:cleanarch/app/modules/public/login/domain/errors/auth_failure.dart'
    as _i5;
import 'package:cleanarch/app/modules/public/login/domain/repositories/auth_repository.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRespository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRespository extends _i1.Mock implements _i3.AuthRespository {
  MockAuthRespository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.AuthFailure, bool>> auth(String? url) =>
      (super.noSuchMethod(
        Invocation.method(
          #auth,
          [url],
        ),
        returnValue: _i4.Future<_i2.Either<_i5.AuthFailure, bool>>.value(
            _FakeEither_0<_i5.AuthFailure, bool>(
          this,
          Invocation.method(
            #auth,
            [url],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.AuthFailure, bool>>);
}
