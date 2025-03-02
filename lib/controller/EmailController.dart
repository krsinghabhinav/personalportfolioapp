import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailController extends GetxController {
  void sendEmail() async {
    final String email = 'abhinavkkrsingh@gmail.com';
    final String subject = Uri.encodeComponent('Reply to Email');
    final String body =
        Uri.encodeComponent('Hello, I am replying to your email.');

    final Uri emailUri = Uri.parse('mailto:$email?subject=$subject&body=$body');

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      Get.snackbar("Error", "Could not open email app");
    }
  }
}
