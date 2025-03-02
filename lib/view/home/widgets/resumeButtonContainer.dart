import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/ResumeController.dart';

class resumeButtonContainer extends StatelessWidget {
   resumeButtonContainer({
    super.key,
    required Animation<double> opacityAnimation,
   
  }) : _opacityAnimation = opacityAnimation;

  final Animation<double> _opacityAnimation;
  
  final ResumeController resumeController = Get.put(ResumeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _opacityAnimation,
        builder: (context, child) {
          return Opacity(
            opacity: _opacityAnimation.value,
            child: GestureDetector(
              onTap: () {
                resumeController.openResume();
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
                      AssetImage("assets/images/resumeicons.png"),
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Resume",
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
    );
  }
}
