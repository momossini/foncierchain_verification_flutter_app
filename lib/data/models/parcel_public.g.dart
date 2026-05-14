// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelPublicImpl _$$ParcelPublicImplFromJson(Map<String, dynamic> json) =>
    _$ParcelPublicImpl(
      id: json['id'] as String,
      parcelUid: json['parcelUid'] as String,
      address: json['address'] as String,
      district: json['district'] as String,
      city: json['city'] as String,
      status: json['status'] as String,
      currentOwnerName: json['currentOwnerName'] as String?,
      history:
          (json['history'] as List<dynamic>?)
              ?.map(
                (e) => ParcelHistoryPublic.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ParcelPublicImplToJson(_$ParcelPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parcelUid': instance.parcelUid,
      'address': instance.address,
      'district': instance.district,
      'city': instance.city,
      'status': instance.status,
      'currentOwnerName': instance.currentOwnerName,
      'history': instance.history,
    };
