// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel_history_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParcelHistoryPublicImpl _$$ParcelHistoryPublicImplFromJson(
  Map<String, dynamic> json,
) => _$ParcelHistoryPublicImpl(
  id: json['id'] as String,
  actionType: json['actionType'] as String,
  previousOwner: json['previousOwner'] as String?,
  newOwner: json['newOwner'] as String?,
  details: json['details'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ParcelHistoryPublicImplToJson(
  _$ParcelHistoryPublicImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'actionType': instance.actionType,
  'previousOwner': instance.previousOwner,
  'newOwner': instance.newOwner,
  'details': instance.details,
  'createdAt': instance.createdAt.toIso8601String(),
};
