import 'package:blinkit_clone/main.dart';
import 'package:blinkit_clone/reposetory/screens/loginscreen.dart';
import 'package:blinkit_clone/reposetory/screens/splash/splashscreen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('app opens splash screen and navigates to login', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.byType(LoginScreen), findsNothing);

    // Advance the splash timer without waiting in real time.
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    expect(find.byType(LoginScreen), findsOneWidget);
  });
}
