import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/splash/splash_screen.dart';
import '../../features/home/home_screen.dart';
import '../../features/search/search_results_screen.dart';
import '../../features/parcel_detail/parcel_detail_screen.dart';
import '../../features/glossary/glossary_screen.dart';
import '../../features/support/support_screen.dart';
import '../../features/error/error_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/search-results',
        builder: (context, state) {
          final uid = state.uri.queryParameters['uid'];
          final address = state.uri.queryParameters['address'];
          return SearchResultsScreen(uid: uid, address: address);
        },
      ),
      GoRoute(
        path: '/parcel-detail/:id',
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return ParcelDetailScreen(id: id);
        },
      ),
      GoRoute(
        path: '/glossary',
        builder: (context, state) => const GlossaryScreen(),
      ),
      GoRoute(
        path: '/support',
        builder: (context, state) => const SupportScreen(),
      ),
      GoRoute(
        path: '/error',
        builder: (context, state) {
          final message = state.uri.queryParameters['message'];
          return ErrorScreen(message: message);
        },
      ),
    ],
  );
}
