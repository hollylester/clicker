import 'package:clicker/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('button is visible, enabled, and has no effect', (tester) async {
    await tester.pumpWidget(const ClickerApp());

    final buttonFinder = find.byKey(const Key('click-button'));
    expect(buttonFinder, findsOneWidget);

    final button = tester.widget<FilledButton>(buttonFinder);
    expect(button.onPressed, isNotNull);

    await tester.tap(buttonFinder);
    await tester.pump();

    expect(buttonFinder, findsOneWidget);
    expect(find.text('Click me'), findsOneWidget);
  });
}
