import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../controller/EmailController.dart';

class emailButtonContainer extends StatelessWidget {
  emailButtonContainer({
    super.key,
    required Animation<double> opacityAnimation,
  }) : _opacityAnimation = opacityAnimation;

  final Animation<double> _opacityAnimation;
  final EmailController emailController = Get.put(EmailController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        emailController.sendEmail();
      },
      child: AnimatedBuilder(
        animation: _opacityAnimation,
        builder: (context, child) {
          return Opacity(
            opacity: _opacityAnimation.value,
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
                  ImageIcon(AssetImage("assets/images/At sign.png"),
                      color: Colors.white, size: 30),
                  const SizedBox(width: 10),
                  const Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
