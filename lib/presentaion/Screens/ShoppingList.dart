import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/presentaion/models/RecipeModel.dart';
import 'package:flutter_recipe_app/presentaion/widgets/list/list_item_shopping.dart';

class Shoppinglist extends StatelessWidget {
  const Shoppinglist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          //foregroundColor: const Color.fromARGB(255, 102, 100, 100),,
          title: const Text(
            'Shopping List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: //ShoppingListItem(recipeModel: RecipeModel.demoRecipe[0])

            ListView.separated(
          itemCount: RecipeModel.demoRecipe.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            //return ReturnContainer(example: example,index: index,);
            return ShoppingListItem(recipeModel: RecipeModel.demoRecipe[index]);
          },
        ));
  }
}
