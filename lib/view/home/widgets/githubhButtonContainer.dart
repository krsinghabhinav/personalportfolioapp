import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../controller/githubhController.dart';

class githubhButtonContainer extends StatelessWidget {
   githubhButtonContainer({
    super.key,
    required Animation<double> opacityAnimation,

  }) : _opacityAnimation = opacityAnimation;

  final Animation<double> _opacityAnimation;
    final Githubhcontroller githubhcontroller = Get.put(Githubhcontroller());

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: GestureDetector(
            onTap: () {
              githubhcontroller.openGitHub();
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
                    AssetImage("assets/images/GitHub.png"),
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Github",
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
