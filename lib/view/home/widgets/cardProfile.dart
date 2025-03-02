import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cardProfile extends StatelessWidget {
  const cardProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Card(
        color: const Color.fromARGB(201, 17, 89, 117),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: double.infinity,
          height: Get.height * 0.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/p1.jpg"),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Abhinav Kumar Singh",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 250, 248, 248)),
              ),
              Text(
                "abhinavkkrsingh@gmail.com",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
