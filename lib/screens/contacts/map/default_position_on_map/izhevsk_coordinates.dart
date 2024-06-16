class AppLatLong {
  final double lat;
  final double long;

  const AppLatLong({
    required this.lat,
    required this.long,
  });
}

class IzhevskLocation extends AppLatLong {
  const IzhevskLocation({
    super.lat = 56.8498,
    super.long = 53.2045,
  });
}
