import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/parcel_public.dart';
import '../sources/parcel_api_source.dart';

part 'parcel_repository.g.dart';

abstract class IParcelRepository {
  Future<List<ParcelPublic>> searchByParcelUid(String parcelUid);
  Future<List<ParcelPublic>> searchByAddress(String address);
  Future<ParcelPublic> getParcelDetail(String id);
}

@riverpod
IParcelRepository parcelRepository(ParcelRepositoryRef ref) {
  return ParcelRepository(ref.watch(parcelApiSourceProvider));
}

class ParcelRepository implements IParcelRepository {
  final ParcelApiSource _apiSource;

  ParcelRepository(this._apiSource);

  @override
  Future<List<ParcelPublic>> searchByParcelUid(String parcelUid) async {
    final envelope = await _apiSource.searchByParcelUid(parcelUid);
    if (envelope.success && envelope.data != null) {
      return envelope.data!;
    } else {
      throw Exception(envelope.error?.message ?? envelope.message ?? 'Erreur lors de la recherche');
    }
  }

  @override
  Future<List<ParcelPublic>> searchByAddress(String address) async {
    final envelope = await _apiSource.searchByAddress(address);
    if (envelope.success && envelope.data != null) {
      return envelope.data!;
    } else {
      throw Exception(envelope.error?.message ?? envelope.message ?? 'Erreur lors de la recherche');
    }
  }

  @override
  Future<ParcelPublic> getParcelDetail(String id) async {
    final envelope = await _apiSource.getParcelDetail(id);
    if (envelope.success && envelope.data != null) {
      return envelope.data!;
    } else {
      throw Exception(envelope.error?.message ?? envelope.message ?? 'Erreur lors de la récupération du détail');
    }
  }
}
