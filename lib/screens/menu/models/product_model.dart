import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class ProductModel {
  final String id;
  final String imagePath;
  final String title;
  final String? description;
  final int price;
  final String? weight;

  ProductModel(
      {required this.imagePath,
      required this.title,
      this.description,
      required this.price,
      this.weight})
      : id = uuid.v4();
}
