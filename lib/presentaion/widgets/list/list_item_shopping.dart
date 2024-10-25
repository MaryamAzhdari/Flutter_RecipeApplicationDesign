import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/presentaion/models/RecipeModel.dart';

class ShoppingListItem extends StatelessWidget {
  final RecipeModel recipeModel;
  ShoppingListItem({
    required this.recipeModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.only(top: 16,right: 8,left: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 206, 197, 171)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recipeModel.title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              recipeModel.writer,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: const Color.fromARGB(255, 83, 7, 1)),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  ((recipeModel.servings)-3).toString(),
                  // style: _textTheme.caption,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.timer,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  recipeModel.cookingTime.toString() + '\'',
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 2,
                  height: 30,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  recipeModel.servings.toString() + ' Servings',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.black.withOpacity(0.7),
            ),
            DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Ingredients(recipeModel: recipeModel),
            ),
            Center(
              child: Container(
                height: 5,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ingredients extends StatelessWidget {
  const Ingredients({
    Key? key,
    required this.recipeModel,
  }) : super(key: key);

  final RecipeModel recipeModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: 3,//recipeModel.title.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  child: Text('⚫️ ' + recipeModel.ingredients[index]),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(color: Colors.black.withOpacity(0.3));
              },
            ),
          ],
        ),
      ),
    );
  }
}
