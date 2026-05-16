import 'package:flutter/foundation.dart';
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

  // Intercepteur de sécurité : journalisation limitée et anonymisation si nécessaire
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        // Log minimal sans données sensibles
        debugPrint('🌐 API Request: ${options.method} ${options.path}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        // Gestion sécurisée des erreurs : ne pas exposer de détails techniques internes
        debugPrint(
          '❌ API Error: ${e.response?.statusCode} ${e.requestOptions.path}',
        );
        return handler.next(e);
      },
    ),
  );

  return dio;
}
