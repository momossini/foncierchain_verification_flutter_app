import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@Freezed(genericArgumentFactories: true)
class ApiEnvelope<T> with _$ApiEnvelope<T> {
  const factory ApiEnvelope({
    required bool success,
    T? data,
    String? message,
    ApiError? error,
  }) = _ApiEnvelope;

  factory ApiEnvelope.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ApiEnvelopeFromJson(json, fromJsonT);
}

@freezed
class ApiError with _$ApiError {
  const factory ApiError({
    required String code,
    required String message,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorFromJson(json);
}
