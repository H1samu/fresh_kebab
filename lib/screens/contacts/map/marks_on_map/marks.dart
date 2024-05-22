import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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

List<MapPoint> getMapPoints() {
  return const [
    MapPoint(name: 'Азина', latitude: 56.805091, longitude: 53.166152),
    MapPoint(name: 'Пушкинская', latitude: 56.840355, longitude: 53.215173),
    MapPoint(name: 'Дзержинского', latitude: 56.883533, longitude: 53.248645),
    MapPoint(name: 'Клубная', latitude: 56.831339, longitude: 53.150297),
    MapPoint(name: 'Баранова', latitude: 56.832935, longitude: 53.124390),
  ];
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

class UnionMarks extends ClusterizedPlacemarkCollection {
  UnionMarks(
      {required super.mapId,
      required super.placemarks,
      required super.radius,
      required super.minZoom});
}
