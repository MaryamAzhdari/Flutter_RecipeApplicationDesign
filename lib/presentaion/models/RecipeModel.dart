
class RecipeModel {
  String title, writer, description;
  int cookingTime;
  int servings;
  List<String> ingredients = [];
  String imgPath;
  RecipeModel({
    required this.title,
    required this.writer,
    required this.description,
    required this.cookingTime,
    required this.servings,
    required this.imgPath,
    required this.ingredients,
  });
  static List<RecipeModel> demoRecipe = [
    RecipeModel(
      title: 'Big match recipes',
      writer: "Jack Merson",
      description:
          'Finger lickin food to munch in front of the match and sharing platters that will keep you going strong during the Games.',
      cookingTime: 25,
      servings: 4,
      imgPath: 'assets/images/img6.jpg',
      ingredients: [
        '10 large eggs',
        'Kosher salt and pepper',
        '2 tbsp. olive oil or unsalted butter',
        '1 tsp. Dijon mustard',
        '4 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel(
      title: 'vegan dinner recipes',
      writer: "Jack Merson",
      description:
          'You will find all the meat and dairy-free inspiration you need in our vegan dinner recipes, from delicious nut roasts and noodles, to pies, burgers, pasta, and more.',
      cookingTime: 10,
      servings: 20,
      imgPath: 'assets/images/img5.jpg',
      ingredients: [
        '8 large eggs',
        '1 tsp. Dijon mustard',
        'Kosher salt and pepper',
        '1 tbsp. olive oil or unsalted butter',
        '2 slices thick-cut bacon, cooked and broken into pieces',
        '2 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel(
      title: 'Meze-style sharing board',
      writer: "Jack Merson",
      description:
          'Share your favourite dishes with family and friends in a meze-style sharing board. This one includes cauliflower and feta fritters, carrot & tahini salad, and falafels',
      cookingTime: 30,
      servings: 15,
      imgPath: 'assets/images/img7.jpg',
      ingredients: [
        'Kosher salt and pepper',
        '5 tbsp. olive oil or unsalted butter',
        '1 slices thick-cut bacon, cooked and broken into pieces',
        '3 c. spinach, torn',
        '2 oz. Gruyère cheese, shredded',
      ],
    ),
    RecipeModel(
      title: 'Meatball marinara fries',
      writer: "Jack Merson",
      description:
          'Top oven-cooked fries with meatball marinara for a crowd-pleasing sharing platter. Ideal for an evening in with friends',
      cookingTime: 60,
      servings: 36,
      imgPath: 'assets/images/img8.jpg',
      ingredients: [
        '10 large eggs',
        'Kosher salt and pepper',
        '3 tbsp. olive oil or unsalted butter',
        '5 oz. Gruyère cheese, shredded',
      ],
    ),
  ];
}