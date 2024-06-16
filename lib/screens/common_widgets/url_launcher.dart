import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class _MyUrls {
  static final Uri vk = Uri.parse('https://vk.com/freshkebab');
  static final Uri inst =
      Uri.parse('https://www.instagram.com/freshkebab_official');
  static const String phoneMain = 'tel://+7 (3412) 22‒23‒33';
  static const String phoneNastya = 'tel://+7 (982) 124-54-55';
  static const String phoneRenat = 'tel://+7 (912) 744-56-56';
}

class MyLaunch {
  static Future<void> callMain() async {
    await launchUrlString(_MyUrls.phoneMain);
  }

  static Future<void> callNastya() async {
    await launchUrlString(_MyUrls.phoneNastya);
  }

  static Future<void> callRenat() async {
    await launchUrlString(_MyUrls.phoneRenat);
  }

  static Future<void> linkInst() async {
    await launchUrl(_MyUrls.inst);
  }

  static Future<void> linkVk() async {
    await launchUrl(_MyUrls.vk);
  }
}
