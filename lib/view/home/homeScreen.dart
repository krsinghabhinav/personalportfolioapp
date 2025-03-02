import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/EmailController.dart';
import '../../controller/LinkedInController.dart';
import '../../controller/PhoneController.dart';
import '../../controller/ResumeController.dart';
import '../../controller/githubhController.dart';
import 'widgets/abouttext.dart';
import 'widgets/cardProfile.dart';
import 'widgets/emailButtonContainer.dart';
import 'widgets/githubhButtonContainer.dart';
import 'widgets/linkedInButtonContainer.dart';
import 'widgets/phoneButtonContainer.dart';
import 'widgets/resumeButtonContainer.dart';

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
    )..repeat(reverse: true);

    _opacityAnimation =
        Tween<double>(begin: 1.0, end: 0.3).animate(_animationController);
  }

  final ResumeController resumeController = Get.put(ResumeController());

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 30, 22, 51),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 30, 22, 51),
          title: Center(
            child: Container(
              height: Get.height * 0.05,
              width: Get.width * 0.58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(246, 218, 73, 37),
              ),
              alignment: Alignment.center,
              child: const Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              // Center(
              //   child: Container(
              //     height: Get.height * 0.045,
              //     width: Get.width * 0.58,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       color: const Color.fromARGB(246, 218, 73, 37),
              //     ),
              //     alignment: Alignment.center,
              //     child: const Text(
              //       "Flutter Developer",
              //       style: TextStyle(
              //           fontSize: 24,
              //           fontWeight: FontWeight.bold,
              //           color: Colors.white),
              //     ),
              //   ),
              // ),

              cardProfile(),
              const SizedBox(height: 10),
              Abouttext(),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  emailButtonContainer(opacityAnimation: _opacityAnimation),
                  githubhButtonContainer(opacityAnimation: _opacityAnimation),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  phoneButtonContainer(opacityAnimation: _opacityAnimation),
                  linkedInButtonContainer(opacityAnimation: _opacityAnimation),
                ],
              ),
              const SizedBox(height: 20),
              resumeButtonContainer(
                opacityAnimation: _opacityAnimation,
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
