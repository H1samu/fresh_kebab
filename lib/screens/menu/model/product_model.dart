class ProductModel {
  final String imagePath;
  final String textTitle;
  final String? textDescription;
  final int textPrice;
  final String? textWeight;

  ProductModel(
      {required this.imagePath,
      required this.textTitle,
      this.textDescription,
      required this.textPrice,
      this.textWeight});
}
