import 'package:freezed_annotation/freezed_annotation.dart';
import 'parcel_history_public.dart';

part 'parcel_public.freezed.dart';
part 'parcel_public.g.dart';

@freezed
class ParcelPublic with _$ParcelPublic {
  /// Représente une parcelle avec uniquement des données publiques autorisées.
  const factory ParcelPublic({
    required String id,
    required String parcelUid,
    required String address,
    required String district,
    required String city,
    required String status,
    String? currentOwnerName, // Autorisé publiquement selon spec
    @Default([]) List<ParcelHistoryPublic> history,
  }) = _ParcelPublic;

  factory ParcelPublic.fromJson(Map<String, dynamic> json) =>
      _$ParcelPublicFromJson(json);
}
