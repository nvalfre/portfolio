import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio2/app/my_portfolio_app.dart';

import 'package:portfolio2/main.dart';

void main() {
  testWidgets('MyPortfolioApp test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyPortfolioApp());
  });
}
