import 'package:url_launcher/url_launcher.dart';

class UtilityHelper {
  Future<void> openLaunchUrl({required String url}) async {
    if (url.contains("http://") || url.contains("https://")) {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Could not launch $url';
      }
    } else {
      String formattedUrl = "https://$url";
      if (await canLaunchUrl(Uri.parse(formattedUrl))) {
        await launchUrl(Uri.parse(formattedUrl));
      } else {
        throw 'Could not launch $formattedUrl';
      }
    }
  }
}
