import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/parcel_public.dart';
import '../models/parcel_history_public.dart';
import '../sources/parcel_api_source.dart';

part 'parcel_repository.g.dart';

abstract class IParcelRepository {
  Future<List<ParcelPublic>> searchByParcelUid(String parcelUid);
  Future<List<ParcelPublic>> searchByAddress(String address);
  Future<ParcelPublic> getParcelDetail(String id);
}

@riverpod
IParcelRepository parcelRepository(ParcelRepositoryRef ref) {
  // Utilisation systématique du Mock pour la démonstration selon les souhaits de l'utilisateur
  return MockParcelRepository();
}

class ParcelRepository implements IParcelRepository {
  final ParcelApiSource _apiSource;

  ParcelRepository(this._apiSource);

  @override
  Future<List<ParcelPublic>> searchByParcelUid(String parcelUid) async {
    final response = await _apiSource.searchByParcelUid(parcelUid);
    if (response.success && response.data != null) {
      return response.data!;
    }
    throw Exception(response.message ?? 'Erreur lors de la recherche');
  }

  @override
  Future<List<ParcelPublic>> searchByAddress(String address) async {
    final response = await _apiSource.searchByAddress(address);
    if (response.success && response.data != null) {
      return response.data!;
    }
    throw Exception(response.message ?? 'Erreur lors de la recherche');
  }

  @override
  Future<ParcelPublic> getParcelDetail(String id) async {
    final response = await _apiSource.getParcelDetail(id);
    if (response.success && response.data != null) {
      return response.data!;
    }
    throw Exception(response.message ?? 'Erreur lors de la récupération');
  }
}

class MockParcelRepository implements IParcelRepository {
  @override
  Future<List<ParcelPublic>> searchByParcelUid(String parcelUid) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      const ParcelPublic(
        id: '1',
        parcelUid: 'PAR-789012',
        address: '45 Avenue de la République',
        district: 'Plateau',
        city: 'Dakar',
        status: 'actif',
        currentOwnerName: 'Mamadou Diallo',
      ),
    ];
  }

  @override
  Future<List<ParcelPublic>> searchByAddress(String address) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      const ParcelPublic(
        id: '1',
        parcelUid: 'PAR-789012',
        address: '45 Avenue de la République',
        district: 'Plateau',
        city: 'Dakar',
        status: 'actif',
        currentOwnerName: 'Mamadou Diallo',
      ),
    ];
  }

  @override
  Future<ParcelPublic> getParcelDetail(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return ParcelPublic(
      id: '1',
      parcelUid: 'PAR-789012',
      address: '45 Avenue de la République',
      district: 'Plateau',
      city: 'Dakar',
      status: 'actif',
      currentOwnerName: 'Mamadou Diallo',
      history: [
        ParcelHistoryPublic(
          id: 'h1',
          actionType: 'Mutation',
          createdAt: DateTime(2023, 10, 15),
          details: 'Vente par acte notarié',
          newOwner: 'Mamadou Diallo',
          previousOwner: 'Entreprise ABC',
        ),
        ParcelHistoryPublic(
          id: 'h2',
          actionType: 'Immatriculation',
          createdAt: DateTime(2020, 5, 20),
          details: 'Création du titre foncier initial',
          newOwner: 'Entreprise ABC',
        ),
      ],
    );
  }
}
