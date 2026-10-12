import 'package:flutter/material.dart';
import '../features/authentication/presentation/welcome_screen.dart';
import 'theme/app_theme.dart';

/// The root widget of the whole app.
class EkshatheApp extends StatelessWidget {
  const EkshatheApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ekshathe',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: const WelcomeScreen(),
    );
  }
}