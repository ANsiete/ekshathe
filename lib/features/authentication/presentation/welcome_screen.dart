import 'package:flutter/material.dart';
import '../../../app/main_shell.dart';
import '../../../app/theme/app_colors.dart';
import '../../../core/widgets/primary_button.dart';

/// First screen a new user sees.
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  // TEMPORARY: until Milestone 3 (real login), both buttons just open the app.
  void _openAppTemporarily(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const MainShell()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            children: [
              const SizedBox(height: 32),
              // Placeholder logo. We replace this with the real logo later.
              Container(
                height: 96,
                width: 96,
                decoration: const BoxDecoration(
                  color: AppColors.forestGreen,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.groups_rounded,
                    size: 52, color: Colors.white),
              ),
              const SizedBox(height: 24),
              const Text(
                'একসাথে',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: AppColors.forestGreen,
                ),
              ),
              const Text(
                'Ekshathe',
                style: TextStyle(fontSize: 18, color: AppColors.mutedText),
              ),
              const SizedBox(height: 12),
              const Text(
                'একসাথে সব হিসাব',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 20),
              const Text(
                'Split bills with friends, roommates and travel groups. '
                'See who paid, who owes, and how to settle up, clearly and fairly.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15, height: 1.5, color: AppColors.mutedText),
              ),
              const SizedBox(height: 48),
              PrimaryButton(
                label: 'Sign Up',
                onPressed: () => _openAppTemporarily(context),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => _openAppTemporarily(context),
                child: const Text('Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}