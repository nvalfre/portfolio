import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/app/my_portfolio_app.dart';

import 'package:portfolio/main.dart';

void main() {
  testWidgets('MyPortfolioApp test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyPortfolioApp());
  });
}
