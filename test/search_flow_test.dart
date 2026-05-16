import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foncierchain_verification_flutter_app/features/home/home_screen.dart';
import 'package:foncierchain_verification_flutter_app/app/router/app_router.dart';
import 'package:foncierchain_verification_flutter_app/core/theme/app_theme.dart';

void main() {
  testWidgets('Home screen search field updates provider state', (
    tester,
  ) async {
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          theme: AppTheme.lightTheme,
          home: const HomeScreen(),
        ),
      ),
    );

    // Initial state: search button disabled because query is empty
    final searchButton = find.byType(ElevatedButton);
    expect(tester.widget<ElevatedButton>(searchButton).onPressed, isNull);

    // Enter text
    await tester.enterText(find.byType(TextField), 'PAR-123');
    await tester.pump();

    // Button should now be enabled
    expect(tester.widget<ElevatedButton>(searchButton).onPressed, isNotNull);
  });
}
