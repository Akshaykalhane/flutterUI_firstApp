class DietModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool viewIsSelected;

  DietModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calories,
      required this.viewIsSelected});

  static List<DietModel> getData() {
    List<DietModel> diets = [];

    diets.add(DietModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true)
        );

          diets.add(DietModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true)
        );

  diets.add(DietModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true)
        );
diets.add(DietModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true)
        );

    return diets;
  }
}
