import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/parcel_public.dart';
import '../../data/repositories/parcel_repository.dart';

part 'parcel_detail_providers.g.dart';

@riverpod
Future<ParcelPublic> parcelDetail(ParcelDetailRef ref, String id) {
  return ref.watch(parcelRepositoryProvider).getParcelDetail(id);
}
