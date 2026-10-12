import 'package:flutter_test/flutter_test.dart';
import 'package:ekshathe/app/app.dart';

void main() {
  testWidgets('Welcome screen shows brand name and tagline', (tester) async {
    await tester.pumpWidget(const EkshatheApp());

    expect(find.text('একসাথে'), findsOneWidget);
    expect(find.text('একসাথে সব হিসাব'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('Log In'), findsOneWidget);
  });
}