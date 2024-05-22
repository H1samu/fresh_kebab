import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class _MyUrls {
  static final Uri vk = Uri.parse('https://vk.com/freshkebab');
  static final Uri inst =
      Uri.parse('https://www.instagram.com/freshkebab_official');
  static const String phone = 'tel://+7 (3412) 22‒23‒33';
}

class MyLaunch {
  static Future<void> call() async {
    if (await canLaunchUrlString(_MyUrls.phone)) {
      await launchUrlString(_MyUrls.phone);
    } else {
      throw 'Could not launch ${_MyUrls.phone}';
    }
  }

  static Future<void> linkInst() async {
    if (await canLaunchUrl(_MyUrls.inst)) {
      await launchUrl(_MyUrls.inst);
    } else {
      throw 'Could not launch ${_MyUrls.inst}';
    }
  }

  static Future<void> linkVk() async {
    if (await canLaunchUrl(_MyUrls.vk)) {
      await launchUrl(_MyUrls.vk);
    } else {
      throw 'Could not launch ${_MyUrls.vk}';
    }
  }
}
