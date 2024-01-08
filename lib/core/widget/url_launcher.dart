import 'package:url_launcher/url_launcher.dart';

Future<void> UrlLaunch({required String url}) async {
  final Uri _url = Uri.parse(url);

  if (await canLaunchUrl(_url)) {
    launchUrl(_url);
  } else {
    print('can not view');
  }
}
