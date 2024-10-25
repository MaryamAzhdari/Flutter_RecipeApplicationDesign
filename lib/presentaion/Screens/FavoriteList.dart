import 'package:flutter/material.dart';
import 'package:flutter_recipe_app/presentaion/widgets/list/list_item_favorite.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> foodName = [
      'BLT Dip',
      'Buffalo Chicken Wings',
      'Meatballs with Marinara Sauce',
      'Hearty Rye Melts'
    ];
    List<String> country = ['Italy', 'China', 'India', 'Jepan'];
    List<String> time = ['30', '15', '45', '20'];
    List<String> image = [
      'assets/images/food1.jpg',
      'assets/images/food2.jpg',
      'assets/images/food3.jpg',
      'assets/images/food4.jpg'
    ];

    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          //foregroundColor: const Color.fromARGB(255, 102, 100, 100),,
          title: const Text(
            'Favorite List',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.separated(
          itemCount: foodName.length,
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            //return ReturnContainer(example: example,index: index,);
            return FavoriteListItem(
                pictureUrl: image[index],
                // pictureUrl:
                //     'https://cloudinary-marketing-res.cloudinary.com/images/w_1000,c_scale/v1679921049/Image_URL_header/Image_URL_header-png?_i=AA',
                name: foodName[index],
                time: time[index] + "  minutes",
                county: country[index],
                index: index);
            //return ListItemExample(title: example[index], index: index);
          },
        ));
  }
}
