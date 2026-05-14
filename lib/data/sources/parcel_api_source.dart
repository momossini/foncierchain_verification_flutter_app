import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/network/dio_client.dart';
import '../../core/config/env_config.dart';
import '../models/api_response.dart';
import '../models/parcel_public.dart';

part 'parcel_api_source.g.dart';

@riverpod
ParcelApiSource parcelApiSource(ParcelApiSourceRef ref) {
  return ParcelApiSource(ref.watch(dioClientProvider));
}

class ParcelApiSource {
  final Dio _dio;

  ParcelApiSource(this._dio);

  Future<ApiEnvelope<List<ParcelPublic>>> searchByParcelUid(String parcelUid) async {
    final response = await _dio.get(
      '${EnvConfig.apiVersion}/public/parcels/search',
      queryParameters: {'parceluid': parcelUid},
    );
    return ApiEnvelope.fromJson(
      response.data,
      (json) => (json as List).map((e) => ParcelPublic.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }

  Future<ApiEnvelope<List<ParcelPublic>>> searchByAddress(String address) async {
    final response = await _dio.get(
      '${EnvConfig.apiVersion}/public/parcels/search',
      queryParameters: {'address': address},
    );
    return ApiEnvelope.fromJson(
      response.data,
      (json) => (json as List).map((e) => ParcelPublic.fromJson(e as Map<String, dynamic>)).toList(),
    );
  }

  Future<ApiEnvelope<ParcelPublic>> getParcelDetail(String id) async {
    final response = await _dio.get(
      '${EnvConfig.apiVersion}/public/parcels/$id',
    );
    return ApiEnvelope.fromJson(
      response.data,
      (json) => ParcelPublic.fromJson(json as Map<String, dynamic>),
    );
  }
}
