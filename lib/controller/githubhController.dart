import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Githubhcontroller extends GetxController {
  void openGitHub() async {
    final Uri url = Uri.parse("https://github.com/krsinghabhinav");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      Get.snackbar("Error", "Could not open the URL",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
