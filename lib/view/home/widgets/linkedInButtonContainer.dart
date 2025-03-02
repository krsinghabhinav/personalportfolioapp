import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/LinkedInController.dart';

class linkedInButtonContainer extends StatelessWidget {
   linkedInButtonContainer({
    super.key,
    required Animation<double> opacityAnimation,
   
  }) : _opacityAnimation = opacityAnimation;

  final Animation<double> _opacityAnimation;
 
final LinkedInController linkedinController = Get.put(LinkedInController());

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
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
    );
  }
}
