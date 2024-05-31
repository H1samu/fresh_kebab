import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fresh_kebab/screens/contacts/map/map_points/coordinates_of_points.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPoint extends Equatable {
  const MapPoint({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  final String name;

  final double latitude;

  final double longitude;

  @override
  List<Object?> get props => [name, latitude, longitude];
}

List<PlacemarkMapObject> getPlacemarkObjects(BuildContext context) {
  return getMapPoints().asMap().entries.map(
    (entry) {
      final index = entry.key;
      final point = entry.value;
      final mapId = MapObjectId('MapObject_$index');
      return PlacemarkMapObject(
        mapId: mapId,
        point: Point(latitude: point.latitude, longitude: point.longitude),
        opacity: 1,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
            image: BitmapDescriptor.fromAssetImage(
              'assets/images/logos/placeholder.png',
            ),
            scale: 2,
          ),
        ),
      );
    },
  ).toList();
}
