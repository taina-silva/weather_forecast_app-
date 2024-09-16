// Mocks generated by Mockito 5.4.4 from annotations
// in weather_forecast_app/test/app/modules/home/infra/datasources/fetch_weather_datasource_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dio/dio.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:weather_forecast_app/app/core/models/response/rest_client_response.dart'
    as _i2;
import 'package:weather_forecast_app/app/core/services/logger/logger_service.dart'
    as _i6;
import 'package:weather_forecast_app/app/core/services/rest_client/rest_client.dart'
    as _i3;

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

class _FakeRestClientResponse_0 extends _i1.SmartFake
    implements _i2.RestClientResponse {
  _FakeRestClientResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [RestClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockRestClient extends _i1.Mock implements _i3.RestClient {
  MockRestClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.RestClientResponse> get(
    String? path, {
    String? baseUrl,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #baseUrl: baseUrl,
            #queryParameters: queryParameters,
            #options: options,
          },
        ),
        returnValue:
            _i4.Future<_i2.RestClientResponse>.value(_FakeRestClientResponse_0(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #baseUrl: baseUrl,
              #queryParameters: queryParameters,
              #options: options,
            },
          ),
        )),
      ) as _i4.Future<_i2.RestClientResponse>);

  @override
  _i4.Future<_i2.RestClientResponse> post(
    String? path, {
    String? baseUrl,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    _i5.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #baseUrl: baseUrl,
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
          },
        ),
        returnValue:
            _i4.Future<_i2.RestClientResponse>.value(_FakeRestClientResponse_0(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #baseUrl: baseUrl,
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
            },
          ),
        )),
      ) as _i4.Future<_i2.RestClientResponse>);
}

/// A class which mocks [LoggerService].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoggerService extends _i1.Mock implements _i6.LoggerService {
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
