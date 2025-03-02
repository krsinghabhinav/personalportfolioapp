import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedInController extends GetxController {
  final String linkedInUrl = "https://www.linkedin.com/in/abhinav-kumar-singh-07196718b";

  void openLinkedIn() async {
    Uri url = Uri.parse(linkedInUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      Get.snackbar("Error", "Cannot open LinkedIn profile");
    }
  }
}
