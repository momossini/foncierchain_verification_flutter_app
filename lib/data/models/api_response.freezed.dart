// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ApiEnvelope<T> _$ApiEnvelopeFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object?) fromJsonT,
) {
  return _ApiEnvelope<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiEnvelope<T> {
  bool get success => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ApiError? get error => throw _privateConstructorUsedError;

  /// Serializes this ApiEnvelope to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiEnvelopeCopyWith<T, ApiEnvelope<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiEnvelopeCopyWith<T, $Res> {
  factory $ApiEnvelopeCopyWith(
    ApiEnvelope<T> value,
    $Res Function(ApiEnvelope<T>) then,
  ) = _$ApiEnvelopeCopyWithImpl<T, $Res, ApiEnvelope<T>>;
  @useResult
  $Res call({bool success, T? data, String? message, ApiError? error});

  $ApiErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$ApiEnvelopeCopyWithImpl<T, $Res, $Val extends ApiEnvelope<T>>
    implements $ApiEnvelopeCopyWith<T, $Res> {
  _$ApiEnvelopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as T?,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as ApiError?,
          )
          as $Val,
    );
  }

  /// Create a copy of ApiEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ApiErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiEnvelopeImplCopyWith<T, $Res>
    implements $ApiEnvelopeCopyWith<T, $Res> {
  factory _$$ApiEnvelopeImplCopyWith(
    _$ApiEnvelopeImpl<T> value,
    $Res Function(_$ApiEnvelopeImpl<T>) then,
  ) = __$$ApiEnvelopeImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool success, T? data, String? message, ApiError? error});

  @override
  $ApiErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$ApiEnvelopeImplCopyWithImpl<T, $Res>
    extends _$ApiEnvelopeCopyWithImpl<T, $Res, _$ApiEnvelopeImpl<T>>
    implements _$$ApiEnvelopeImplCopyWith<T, $Res> {
  __$$ApiEnvelopeImplCopyWithImpl(
    _$ApiEnvelopeImpl<T> _value,
    $Res Function(_$ApiEnvelopeImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$ApiEnvelopeImpl<T>(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        data: freezed == data
            ? _value.data
            : data // ignore: cast_nullable_to_non_nullable
                  as T?,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as ApiError?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiEnvelopeImpl<T> implements _ApiEnvelope<T> {
  const _$ApiEnvelopeImpl({
    required this.success,
    this.data,
    this.message,
    this.error,
  });

  factory _$ApiEnvelopeImpl.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) => _$$ApiEnvelopeImplFromJson(json, fromJsonT);

  @override
  final bool success;
  @override
  final T? data;
  @override
  final String? message;
  @override
  final ApiError? error;

  @override
  String toString() {
    return 'ApiEnvelope<$T>(success: $success, data: $data, message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiEnvelopeImpl<T> &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(data),
    message,
    error,
  );

  /// Create a copy of ApiEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiEnvelopeImplCopyWith<T, _$ApiEnvelopeImpl<T>> get copyWith =>
      __$$ApiEnvelopeImplCopyWithImpl<T, _$ApiEnvelopeImpl<T>>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiEnvelopeImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiEnvelope<T> implements ApiEnvelope<T> {
  const factory _ApiEnvelope({
    required final bool success,
    final T? data,
    final String? message,
    final ApiError? error,
  }) = _$ApiEnvelopeImpl<T>;

  factory _ApiEnvelope.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) = _$ApiEnvelopeImpl<T>.fromJson;

  @override
  bool get success;
  @override
  T? get data;
  @override
  String? get message;
  @override
  ApiError? get error;

  /// Create a copy of ApiEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiEnvelopeImplCopyWith<T, _$ApiEnvelopeImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) {
  return _ApiError.fromJson(json);
}

/// @nodoc
mixin _$ApiError {
  String get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ApiError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorCopyWith<ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorCopyWith<$Res> {
  factory $ApiErrorCopyWith(ApiError value, $Res Function(ApiError) then) =
      _$ApiErrorCopyWithImpl<$Res, ApiError>;
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class _$ApiErrorCopyWithImpl<$Res, $Val extends ApiError>
    implements $ApiErrorCopyWith<$Res> {
  _$ApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            message: null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiErrorImplCopyWith<$Res>
    implements $ApiErrorCopyWith<$Res> {
  factory _$$ApiErrorImplCopyWith(
    _$ApiErrorImpl value,
    $Res Function(_$ApiErrorImpl) then,
  ) = __$$ApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String message});
}

/// @nodoc
class __$$ApiErrorImplCopyWithImpl<$Res>
    extends _$ApiErrorCopyWithImpl<$Res, _$ApiErrorImpl>
    implements _$$ApiErrorImplCopyWith<$Res> {
  __$$ApiErrorImplCopyWithImpl(
    _$ApiErrorImpl _value,
    $Res Function(_$ApiErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null, Object? message = null}) {
    return _then(
      _$ApiErrorImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        message: null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorImpl implements _ApiError {
  const _$ApiErrorImpl({required this.code, required this.message});

  factory _$ApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorImplFromJson(json);

  @override
  final String code;
  @override
  final String message;

  @override
  String toString() {
    return 'ApiError(code: $code, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      __$$ApiErrorImplCopyWithImpl<_$ApiErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorImplToJson(this);
  }
}

abstract class _ApiError implements ApiError {
  const factory _ApiError({
    required final String code,
    required final String message,
  }) = _$ApiErrorImpl;

  factory _ApiError.fromJson(Map<String, dynamic> json) =
      _$ApiErrorImpl.fromJson;

  @override
  String get code;
  @override
  String get message;

  /// Create a copy of ApiError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorImplCopyWith<_$ApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
