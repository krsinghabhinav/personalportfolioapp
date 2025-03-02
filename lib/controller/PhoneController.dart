import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneController extends GetxController {
  final String phoneNumber = "tel:7525827482";

  void dialNumber() async {
    await launchUrl(Uri.parse(phoneNumber), mode: LaunchMode.externalApplication);
  }
}
