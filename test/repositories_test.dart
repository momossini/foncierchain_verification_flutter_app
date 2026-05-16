import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:foncierchain_verification_flutter_app/data/repositories/parcel_repository.dart';
import 'package:foncierchain_verification_flutter_app/data/sources/parcel_api_source.dart';
import 'package:foncierchain_verification_flutter_app/data/models/api_response.dart';
import 'package:foncierchain_verification_flutter_app/data/models/parcel_public.dart';

class MockParcelApiSource extends Mock implements ParcelApiSource {}

void main() {
  late MockParcelApiSource mockSource;
  late ParcelRepository repository;

  setUp(() {
    mockSource = MockParcelApiSource();
    repository = ParcelRepository(mockSource);
  });

  group('ParcelRepository', () {
    const tParcel = ParcelPublic(
      id: '1',
      parcelUid: 'P1',
      address: 'A1',
      district: 'D1',
      city: 'C1',
      status: 'active',
    );

    test('searchByParcelUid returns data when source succeeds', () async {
      when(() => mockSource.searchByParcelUid(any())).thenAnswer(
        (_) async => const ApiEnvelope(success: true, data: [tParcel]),
      );

      final result = await repository.searchByParcelUid('P1');

      expect(result, [tParcel]);
      verify(() => mockSource.searchByParcelUid('P1')).called(1);
    });

    test('searchByParcelUid throws exception when source fails', () async {
      when(() => mockSource.searchByParcelUid(any())).thenAnswer(
        (_) async => const ApiEnvelope(success: false, message: 'Error'),
      );

      expect(() => repository.searchByParcelUid('P1'), throwsException);
    });
  });
}
