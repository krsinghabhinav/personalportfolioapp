import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../home/homeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // Continuous rotation

    _animation = Tween<double>(begin: 0.8, end: 1.2)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    /// Navigate to HomeScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const Homescreen()); // Navigate without back option
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: _controller, // Apply continuous rotation
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "assets/images/p1.jpg",
                        width: Get.width * 0.4,
                        height: Get.width * 0.4,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: Get.height * 0.1),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.red, Colors.orange, Colors.yellow, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: const Text(
                "Personal Portfolio App",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text remains visible
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
