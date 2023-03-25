class TopModel {
  String name;
  bool selected;
  TopModel({required this.name, required this.selected});
}

class FoodModel {
  String category;
  String name;
  String image;
  String? about;
  int cost;
  int count = 1;
  String? ctg1;
  String? ctg2;
  String? ctg3;
  String? ctg4;
  String? ctg5;

  bool? bool1 = false;
  bool? bool2 = false;
  bool? bool3 = false;
  bool? bool4 = false;
  bool? bool5 = false;
  bool? bool6 = false;
  bool? bool7 = false;
  FoodModel(
      {this.about,
      this.bool1,
      this.bool2,
      this.bool3,
      this.bool4,
      this.bool5,
      this.bool6,
      this.bool7,
      this.ctg1,
      this.ctg2,
      this.ctg3,
      this.ctg4,
      this.ctg5,
      required this.count,
      required this.category,
      required this.cost,
      required this.image,
      required this.name});
}
// class SaladModel{
//    String name;
//   String image;
//   String? about;
//   String cost;
//   SaladModel(
//       { this.about,
//       required this.cost,
//       required this.image,
//       required this.name});

// }
// class CakesModel{
//    String name;
//   String image;
//   String? about;
//   String cost;
//   CakesModel(
//       { this.about,
//       required this.cost,
//       required this.image,
//       required this.name});

// }
// class DrinksModel{
//    String name;
//   String image;
//   String? about;
//   String cost;
//   DrinksModel(
//       { this.about,
//       required this.cost,
//       required this.image,
//       required this.name});

// }
