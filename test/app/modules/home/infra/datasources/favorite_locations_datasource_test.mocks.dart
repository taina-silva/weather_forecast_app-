// Mocks generated by Mockito 5.4.4 from annotations
// in weather_forecast_app/test/app/modules/home/infra/datasources/favorite_locations_datasource_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:weather_forecast_app/app/core/services/local_storage/local_storage.dart'
    as _i2;
import 'package:weather_forecast_app/app/core/services/logger/logger_service.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [LocalStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalStorage extends _i1.Mock implements _i2.LocalStorage {
  MockLocalStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<T?> read<T>(String? key) => (super.noSuchMethod(
        Invocation.method(
          #read,
          [key],
        ),
        returnValue: _i3.Future<T?>.value(),
      ) as _i3.Future<T?>);

  @override
  _i3.Future<void> write(
    String? key,
    dynamic value,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #write,
          [
            key,
            value,
          ],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> delete(String? key) => (super.noSuchMethod(
        Invocation.method(
          #delete,
          [key],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<void> deleteAll() => (super.noSuchMethod(
        Invocation.method(
          #deleteAll,
          [],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);

  @override
  _i3.Future<bool> contains(String? key) => (super.noSuchMethod(
        Invocation.method(
          #contains,
          [key],
        ),
        returnValue: _i3.Future<bool>.value(false),
      ) as _i3.Future<bool>);
}

/// A class which mocks [LoggerService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoggerService extends _i1.Mock implements _i4.LoggerService {
  MockLoggerService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  void log(String? message) => super.noSuchMethod(
        Invocation.method(
          #log,
          [message],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void error(
    dynamic exception, {
    StackTrace? stackTrace,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #error,
          [exception],
          {#stackTrace: stackTrace},
        ),
        returnValueForMissingStub: null,
      );
}