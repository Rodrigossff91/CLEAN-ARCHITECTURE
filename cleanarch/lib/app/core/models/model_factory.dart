// ignore_for_file: depend_on_referenced_packages

import 'package:faker/faker.dart';
import 'package:uuid/uuid.dart';

abstract class ModelFactory<T> {
  Faker get faker => Faker();

  /// Creates a fake uuid.
  String createFakeUuid() => const Uuid().v4();

  /// Generate a single fake model.
  T generateFake();

  /// Generate fake list based on provided length.
  List<T> generateFakeList({required int length}) =>
      List.generate(length, (index) => generateFake());
}
