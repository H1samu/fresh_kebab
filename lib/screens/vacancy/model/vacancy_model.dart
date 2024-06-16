class WorkerModel {
  String imagePath;
  String textPost;
  String? textDescription1;
  String? textDescription2;
  String? textDescription3;
  String? textDescription4;
  String? textDescription5;
  String? textDescription6;
  String? textDescription7;

  WorkerModel({
    required this.imagePath,
    required this.textPost,
    this.textDescription1,
    this.textDescription2,
    this.textDescription3,
    this.textDescription4,
    this.textDescription5,
    this.textDescription6,
    this.textDescription7,
  });
}
