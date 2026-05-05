import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:sirf_service_app/src/app/sirf_app.dart';

void main() {
  testWidgets('shows brand title', (tester) async {
    await tester.pumpWidget(const ProviderScope(child: SirfApp()));
    expect(find.text('SIRF SERVICE'), findsOneWidget);
  });
}
