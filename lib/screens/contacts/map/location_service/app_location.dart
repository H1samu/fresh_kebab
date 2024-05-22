import 'package:fresh_kebab/screens/contacts/map/map_model/model.dart';

abstract class AppLocation {
  Future<AppLatLong> getCurrentLocation();

  Future<bool> requestPermission();

  Future<bool> checkPermission();
}
