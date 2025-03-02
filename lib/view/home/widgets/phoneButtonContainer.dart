import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/PhoneController.dart';

class phoneButtonContainer extends StatelessWidget {
   phoneButtonContainer({
    super.key,
    required Animation<double> opacityAnimation,
   
  }) : _opacityAnimation = opacityAnimation;

  final Animation<double> _opacityAnimation;
 
 final PhoneController phoneController = Get.put(PhoneController());
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: GestureDetector(
            onTap: () {
              phoneController.dialNumber(); // Open phone dialer
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
                        "assets/images/Ringer Volume.png"),
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Phone",
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
