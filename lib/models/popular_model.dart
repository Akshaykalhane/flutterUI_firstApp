class PopularModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String calories;
  bool viewIsSelected;
  PopularModel(
      {required this.name,
      required this.iconPath,
      required this.level,
      required this.duration,
      required this.calories,
      required this.viewIsSelected});

  static List<PopularModel> getPopularDiets() {
    List<PopularModel> popularDiets = [];
    popularDiets.add(PopularModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true));

    popularDiets.add(PopularModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true));

    popularDiets.add(PopularModel(
        name: "Honey Pancake",
        iconPath: "path",
        level: "Easy",
        duration: "30mins",
        calories: "180kCal",
        viewIsSelected: true));

    return popularDiets;
  }
}
