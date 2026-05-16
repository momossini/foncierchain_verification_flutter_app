import 'package:flutter_test/flutter_test.dart';
import 'package:foncierchain_verification_flutter_app/data/models/parcel_public.dart';
import 'package:foncierchain_verification_flutter_app/data/models/parcel_history_public.dart';

void main() {
  group('Parcel Models', () {
    test('ParcelPublic fromJson creates a valid object', () {
      final json = {
        'id': '1',
        'parcelUid': 'P-123',
        'address': '123 Street',
        'district': 'Downtown',
        'city': 'Cityville',
        'status': 'active',
        'currentOwnerName': 'John Doe',
        'history': [
          {
            'id': 'h1',
            'actionType': 'mutation',
            'previousOwner': 'Jane Smith',
            'newOwner': 'John Doe',
            'details': 'Transfer of ownership',
            'createdAt': '2023-10-01T10:00:00.000Z',
          },
        ],
      };

      final parcel = ParcelPublic.fromJson(json);

      expect(parcel.id, '1');
      expect(parcel.parcelUid, 'P-123');
      expect(parcel.history.length, 1);
      expect(parcel.history.first.actionType, 'mutation');
    });
  });
}
