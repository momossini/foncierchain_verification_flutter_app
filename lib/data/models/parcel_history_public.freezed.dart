// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_history_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParcelHistoryPublic _$ParcelHistoryPublicFromJson(Map<String, dynamic> json) {
  return _ParcelHistoryPublic.fromJson(json);
}

/// @nodoc
mixin _$ParcelHistoryPublic {
  String get id => throw _privateConstructorUsedError;
  String get actionType => throw _privateConstructorUsedError;
  String? get previousOwner => throw _privateConstructorUsedError;
  String? get newOwner => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this ParcelHistoryPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParcelHistoryPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParcelHistoryPublicCopyWith<ParcelHistoryPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelHistoryPublicCopyWith<$Res> {
  factory $ParcelHistoryPublicCopyWith(
    ParcelHistoryPublic value,
    $Res Function(ParcelHistoryPublic) then,
  ) = _$ParcelHistoryPublicCopyWithImpl<$Res, ParcelHistoryPublic>;
  @useResult
  $Res call({
    String id,
    String actionType,
    String? previousOwner,
    String? newOwner,
    String? details,
    DateTime createdAt,
  });
}

/// @nodoc
class _$ParcelHistoryPublicCopyWithImpl<$Res, $Val extends ParcelHistoryPublic>
    implements $ParcelHistoryPublicCopyWith<$Res> {
  _$ParcelHistoryPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParcelHistoryPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? actionType = null,
    Object? previousOwner = freezed,
    Object? newOwner = freezed,
    Object? details = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            actionType: null == actionType
                ? _value.actionType
                : actionType // ignore: cast_nullable_to_non_nullable
                      as String,
            previousOwner: freezed == previousOwner
                ? _value.previousOwner
                : previousOwner // ignore: cast_nullable_to_non_nullable
                      as String?,
            newOwner: freezed == newOwner
                ? _value.newOwner
                : newOwner // ignore: cast_nullable_to_non_nullable
                      as String?,
            details: freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParcelHistoryPublicImplCopyWith<$Res>
    implements $ParcelHistoryPublicCopyWith<$Res> {
  factory _$$ParcelHistoryPublicImplCopyWith(
    _$ParcelHistoryPublicImpl value,
    $Res Function(_$ParcelHistoryPublicImpl) then,
  ) = __$$ParcelHistoryPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String actionType,
    String? previousOwner,
    String? newOwner,
    String? details,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$ParcelHistoryPublicImplCopyWithImpl<$Res>
    extends _$ParcelHistoryPublicCopyWithImpl<$Res, _$ParcelHistoryPublicImpl>
    implements _$$ParcelHistoryPublicImplCopyWith<$Res> {
  __$$ParcelHistoryPublicImplCopyWithImpl(
    _$ParcelHistoryPublicImpl _value,
    $Res Function(_$ParcelHistoryPublicImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParcelHistoryPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? actionType = null,
    Object? previousOwner = freezed,
    Object? newOwner = freezed,
    Object? details = freezed,
    Object? createdAt = null,
  }) {
    return _then(
      _$ParcelHistoryPublicImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        actionType: null == actionType
            ? _value.actionType
            : actionType // ignore: cast_nullable_to_non_nullable
                  as String,
        previousOwner: freezed == previousOwner
            ? _value.previousOwner
            : previousOwner // ignore: cast_nullable_to_non_nullable
                  as String?,
        newOwner: freezed == newOwner
            ? _value.newOwner
            : newOwner // ignore: cast_nullable_to_non_nullable
                  as String?,
        details: freezed == details
            ? _value.details
            : details // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelHistoryPublicImpl implements _ParcelHistoryPublic {
  const _$ParcelHistoryPublicImpl({
    required this.id,
    required this.actionType,
    this.previousOwner,
    this.newOwner,
    this.details,
    required this.createdAt,
  });

  factory _$ParcelHistoryPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelHistoryPublicImplFromJson(json);

  @override
  final String id;
  @override
  final String actionType;
  @override
  final String? previousOwner;
  @override
  final String? newOwner;
  @override
  final String? details;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'ParcelHistoryPublic(id: $id, actionType: $actionType, previousOwner: $previousOwner, newOwner: $newOwner, details: $details, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelHistoryPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.actionType, actionType) ||
                other.actionType == actionType) &&
            (identical(other.previousOwner, previousOwner) ||
                other.previousOwner == previousOwner) &&
            (identical(other.newOwner, newOwner) ||
                other.newOwner == newOwner) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    actionType,
    previousOwner,
    newOwner,
    details,
    createdAt,
  );

  /// Create a copy of ParcelHistoryPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelHistoryPublicImplCopyWith<_$ParcelHistoryPublicImpl> get copyWith =>
      __$$ParcelHistoryPublicImplCopyWithImpl<_$ParcelHistoryPublicImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelHistoryPublicImplToJson(this);
  }
}

abstract class _ParcelHistoryPublic implements ParcelHistoryPublic {
  const factory _ParcelHistoryPublic({
    required final String id,
    required final String actionType,
    final String? previousOwner,
    final String? newOwner,
    final String? details,
    required final DateTime createdAt,
  }) = _$ParcelHistoryPublicImpl;

  factory _ParcelHistoryPublic.fromJson(Map<String, dynamic> json) =
      _$ParcelHistoryPublicImpl.fromJson;

  @override
  String get id;
  @override
  String get actionType;
  @override
  String? get previousOwner;
  @override
  String? get newOwner;
  @override
  String? get details;
  @override
  DateTime get createdAt;

  /// Create a copy of ParcelHistoryPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelHistoryPublicImplCopyWith<_$ParcelHistoryPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
