import 'package:freezed_annotation/freezed_annotation.dart';

part 'parcel_history_public.freezed.dart';
part 'parcel_history_public.g.dart';

@freezed
class ParcelHistoryPublic with _$ParcelHistoryPublic {
  const factory ParcelHistoryPublic({
    required String id,
    required String actionType,
    String? previousOwner,
    String? newOwner,
    String? details,
    required DateTime createdAt,
  }) = _ParcelHistoryPublic;

  factory ParcelHistoryPublic.fromJson(Map<String, dynamic> json) =>
      _$ParcelHistoryPublicFromJson(json);
}
