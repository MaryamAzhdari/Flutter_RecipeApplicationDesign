class Timemode {
  int cookingTime;
  String imgPath;
  Timemode({
    required this.cookingTime,
    required this.imgPath,
  });
  static List<Timemode> demoRecipe = [
    Timemode(
      cookingTime: 15,
      imgPath: 'assets/images/img5.jpg',
    ),
    Timemode(
      cookingTime: 30,
      imgPath: 'assets/images/img6.jpg',
    ),
    Timemode(
      cookingTime: 50,
      imgPath: 'assets/images/img7.jpg',
    ),
    Timemode(
      cookingTime: 75,
      imgPath: 'assets/images/img8.jpg',
    ),
  ];
}
