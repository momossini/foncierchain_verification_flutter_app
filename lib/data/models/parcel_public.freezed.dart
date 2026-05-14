// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parcel_public.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParcelPublic _$ParcelPublicFromJson(Map<String, dynamic> json) {
  return _ParcelPublic.fromJson(json);
}

/// @nodoc
mixin _$ParcelPublic {
  String get id => throw _privateConstructorUsedError;
  String get parcelUid => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get district => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get currentOwnerName => throw _privateConstructorUsedError;
  List<ParcelHistoryPublic> get history => throw _privateConstructorUsedError;

  /// Serializes this ParcelPublic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParcelPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParcelPublicCopyWith<ParcelPublic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParcelPublicCopyWith<$Res> {
  factory $ParcelPublicCopyWith(
    ParcelPublic value,
    $Res Function(ParcelPublic) then,
  ) = _$ParcelPublicCopyWithImpl<$Res, ParcelPublic>;
  @useResult
  $Res call({
    String id,
    String parcelUid,
    String address,
    String district,
    String city,
    String status,
    String? currentOwnerName,
    List<ParcelHistoryPublic> history,
  });
}

/// @nodoc
class _$ParcelPublicCopyWithImpl<$Res, $Val extends ParcelPublic>
    implements $ParcelPublicCopyWith<$Res> {
  _$ParcelPublicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParcelPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parcelUid = null,
    Object? address = null,
    Object? district = null,
    Object? city = null,
    Object? status = null,
    Object? currentOwnerName = freezed,
    Object? history = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            parcelUid: null == parcelUid
                ? _value.parcelUid
                : parcelUid // ignore: cast_nullable_to_non_nullable
                      as String,
            address: null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String,
            district: null == district
                ? _value.district
                : district // ignore: cast_nullable_to_non_nullable
                      as String,
            city: null == city
                ? _value.city
                : city // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            currentOwnerName: freezed == currentOwnerName
                ? _value.currentOwnerName
                : currentOwnerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            history: null == history
                ? _value.history
                : history // ignore: cast_nullable_to_non_nullable
                      as List<ParcelHistoryPublic>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ParcelPublicImplCopyWith<$Res>
    implements $ParcelPublicCopyWith<$Res> {
  factory _$$ParcelPublicImplCopyWith(
    _$ParcelPublicImpl value,
    $Res Function(_$ParcelPublicImpl) then,
  ) = __$$ParcelPublicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String parcelUid,
    String address,
    String district,
    String city,
    String status,
    String? currentOwnerName,
    List<ParcelHistoryPublic> history,
  });
}

/// @nodoc
class __$$ParcelPublicImplCopyWithImpl<$Res>
    extends _$ParcelPublicCopyWithImpl<$Res, _$ParcelPublicImpl>
    implements _$$ParcelPublicImplCopyWith<$Res> {
  __$$ParcelPublicImplCopyWithImpl(
    _$ParcelPublicImpl _value,
    $Res Function(_$ParcelPublicImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParcelPublic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? parcelUid = null,
    Object? address = null,
    Object? district = null,
    Object? city = null,
    Object? status = null,
    Object? currentOwnerName = freezed,
    Object? history = null,
  }) {
    return _then(
      _$ParcelPublicImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        parcelUid: null == parcelUid
            ? _value.parcelUid
            : parcelUid // ignore: cast_nullable_to_non_nullable
                  as String,
        address: null == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String,
        district: null == district
            ? _value.district
            : district // ignore: cast_nullable_to_non_nullable
                  as String,
        city: null == city
            ? _value.city
            : city // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        currentOwnerName: freezed == currentOwnerName
            ? _value.currentOwnerName
            : currentOwnerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        history: null == history
            ? _value._history
            : history // ignore: cast_nullable_to_non_nullable
                  as List<ParcelHistoryPublic>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParcelPublicImpl implements _ParcelPublic {
  const _$ParcelPublicImpl({
    required this.id,
    required this.parcelUid,
    required this.address,
    required this.district,
    required this.city,
    required this.status,
    this.currentOwnerName,
    final List<ParcelHistoryPublic> history = const [],
  }) : _history = history;

  factory _$ParcelPublicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParcelPublicImplFromJson(json);

  @override
  final String id;
  @override
  final String parcelUid;
  @override
  final String address;
  @override
  final String district;
  @override
  final String city;
  @override
  final String status;
  @override
  final String? currentOwnerName;
  final List<ParcelHistoryPublic> _history;
  @override
  @JsonKey()
  List<ParcelHistoryPublic> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'ParcelPublic(id: $id, parcelUid: $parcelUid, address: $address, district: $district, city: $city, status: $status, currentOwnerName: $currentOwnerName, history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParcelPublicImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parcelUid, parcelUid) ||
                other.parcelUid == parcelUid) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentOwnerName, currentOwnerName) ||
                other.currentOwnerName == currentOwnerName) &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    parcelUid,
    address,
    district,
    city,
    status,
    currentOwnerName,
    const DeepCollectionEquality().hash(_history),
  );

  /// Create a copy of ParcelPublic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParcelPublicImplCopyWith<_$ParcelPublicImpl> get copyWith =>
      __$$ParcelPublicImplCopyWithImpl<_$ParcelPublicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParcelPublicImplToJson(this);
  }
}

abstract class _ParcelPublic implements ParcelPublic {
  const factory _ParcelPublic({
    required final String id,
    required final String parcelUid,
    required final String address,
    required final String district,
    required final String city,
    required final String status,
    final String? currentOwnerName,
    final List<ParcelHistoryPublic> history,
  }) = _$ParcelPublicImpl;

  factory _ParcelPublic.fromJson(Map<String, dynamic> json) =
      _$ParcelPublicImpl.fromJson;

  @override
  String get id;
  @override
  String get parcelUid;
  @override
  String get address;
  @override
  String get district;
  @override
  String get city;
  @override
  String get status;
  @override
  String? get currentOwnerName;
  @override
  List<ParcelHistoryPublic> get history;

  /// Create a copy of ParcelPublic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParcelPublicImplCopyWith<_$ParcelPublicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
