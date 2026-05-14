import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../config/env_config.dart';

part 'dio_client.g.dart';

@riverpod
Dio dioClient(DioClientRef ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: EnvConfig.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  // Ajout d'un intercepteur pour le logging ou la gestion globale des erreurs si besoin
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        // On peut ajouter ici des logs de debug si nécessaire
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        return handler.next(e);
      },
    ),
  );

  return dio;
}
