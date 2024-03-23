import 'package:avetol_test/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Avetol Landing Screen Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
  });
}
