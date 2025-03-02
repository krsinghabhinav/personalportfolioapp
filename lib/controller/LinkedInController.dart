import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedInController extends GetxController {
  final String linkedInWebUrl =
      "https://www.linkedin.com/in/abhinav-kumar-singh-07196718b";
  final String linkedInAppUrl =
      "linkedin://in/abhinav-kumar-singh-07196718b"; // App deep link

  void openLinkedIn() async {
    Uri appUri = Uri.parse(linkedInAppUrl);
    Uri webUri = Uri.parse(linkedInWebUrl);

    // Try to open in the LinkedIn app first
    if (await canLaunchUrl(appUri)) {
      await launchUrl(appUri, mode: LaunchMode.externalApplication);
    } 
    // If the app is not installed, open in the web browser
    else if (await canLaunchUrl(webUri)) {
      await launchUrl(webUri, mode: LaunchMode.externalApplication);
    } 
    // Show an error if neither works
    else {
      Get.snackbar("Error", "Cannot open LinkedIn profile");
    }
  }
}
