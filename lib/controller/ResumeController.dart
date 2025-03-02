import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeController extends GetxController {
  final String resumeUrl =
      "https://drive.google.com/file/d/1ulO0nYvGkaFsA2sCdyRHjoupgr3q_mXc/view?usp=drive_link";

  void openResume() async {
    if (await canLaunchUrl(Uri.parse(resumeUrl))) {
      await launchUrl(Uri.parse(resumeUrl),
          mode: LaunchMode.externalApplication);
    } else {
      Get.snackbar("Error", "Could not open the resume link",
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
