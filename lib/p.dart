import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ---------------- Splash Screen ----------------
class SplashScreenp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate after 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => OnboardingScreen1());
    });

    return Scaffold(
      backgroundColor: Colors.blue,
      body: const Center(
        child: Text(
          "My App",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ),
    );
  }
}

// ---------------- Onboarding Screen 1 ----------------
class OnboardingScreen1 extends StatefulWidget {
  @override
  _OnboardingScreen1State createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  double _opacity = 0.0; // for fade animation

  @override
  void initState() {
    super.initState();
    // Animate text when screen loads
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: const Duration(seconds: 2), // animation speed
          child: const Text(
            "Welcome to Onboarding!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          Get.to(() => OnboardingScreen2());
        },
      ),
    );
  }
}

// ---------------- Onboarding Screen 2 ----------------
class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "This is Onboarding Screen 2",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
