import 'package:flutter_test/flutter_test.dart';
import 'package:wheel_of_chores/app/app.dart';
import 'package:wheel_of_chores/features/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
