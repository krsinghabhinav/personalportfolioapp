// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class cardProfile extends StatelessWidget {
//   const cardProfile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: const Color.fromARGB(201, 17, 89, 117),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Container(
//         width: double.infinity,
//         height: Get.height * 0.25,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 60,
//               backgroundImage: AssetImage("assets/images/p1.jpg"),
//             ),
//             SizedBox(
//               height: 8,
//             ),
//             Text(
//               "Abhinav Kumar Singh",
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 250, 248, 248)),
//             ),
//             Text(
//               "abhinavkkrsingh@gmail.com",
//               style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: const Color.fromARGB(255, 255, 255, 255)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({super.key});

  @override
  Widget build(BuildContext context) {
    bool isWeb = GetPlatform.isWeb; // Detect platform

    return LayoutBuilder(
      builder: (context, constraints) {
        double screenHeight = MediaQuery.of(context).size.height;

        double cardHeight = isWeb ? screenHeight * 0.42 : screenHeight * 0.265;
        double avatarRadius = isWeb ? 80 : 60;
        double fontSize = isWeb ? 26 : 20;
        double emailFontSize = isWeb ? 18 : 15;

        return Center(
          child: Card(
            color: const Color.fromARGB(201, 17, 89, 117),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: isWeb ? 800 : double.infinity, // Fixed width for web
              height: cardHeight,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: avatarRadius,
                    backgroundImage: const AssetImage("assets/images/p1.jpg"),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Abhinav Kumar Singh",
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "abhinavkkrsingh@gmail.com",
                    style: TextStyle(
                      fontSize: emailFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
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
