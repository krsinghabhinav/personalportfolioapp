import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/EmailController.dart';
import '../../controller/LinkedInController.dart';
import '../../controller/PhoneController.dart';
import '../../controller/githubhController.dart';
import 'widgets/cardProfile.dart';
import 'widgets/emailButtonContainer.dart';
import 'widgets/githubhButtonContainer.dart';
import 'widgets/phoneButtonContainer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..repeat(reverse: true); // Continuous blinking effect

    _opacityAnimation =
        Tween<double>(begin: 1.0, end: 0.3).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
final LinkedInController linkedinController = Get.put(LinkedInController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 22, 51),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                height: Get.height * 0.045,
                width: Get.width * 0.58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(246, 218, 73, 37),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              SizedBox(height: 5),
              cardProfile(),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    emailButtonContainer(opacityAnimation: _opacityAnimation),
                    const SizedBox(width: 25),
                    githubhButtonContainer(
                      opacityAnimation: _opacityAnimation,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    phoneButtonContainer(
                      opacityAnimation: _opacityAnimation,
                    ),
                    const SizedBox(width: 25),
                    AnimatedBuilder(
                      animation: _opacityAnimation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: _opacityAnimation.value,
                          child: GestureDetector(
                            onTap: () {
                              linkedinController.openLinkedIn();
                            },
                            child: Container(
                              height: Get.height * 0.06,
                              width: Get.width * 0.4,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 57, 128, 124),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const ImageIcon(
                                    AssetImage(
                                        "assets/images/LinkedIn Circled.png"),
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text(
                                    "LinkedIn",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
