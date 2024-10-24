import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/presentaion/models/CountryModel.dart';
import 'package:flutter_recipee_app/presentaion/models/RecipeModel.dart';

class Country extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: RecipeModel.demoRecipe.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: InkWell(
                    onTap: () {},
                    // => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => RecipeDetails(
                    //         recipeModel: RecipeModel.demoRecipe[index],
                    //       ),
                    //     )),
                    child: CountyCard(
                      countryMode: CountryModel.demoRecipe[index],
                      index: index,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class CountyCard extends StatefulWidget {
  final CountryModel countryMode;
  final int index;
  CountyCard({required this.countryMode, required this.index});

  @override
  _RecipeCardState createState() => _RecipeCardState();
}

class _RecipeCardState extends State<CountyCard> {
  bool loved = false;
  bool saved = false;
  String imagePath1 = "";
  String imagePath2 = "";

  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      imagePath1 = 'assets/images/img2.jpg';
      imagePath2 = 'assets/images/img3.jpg';
    } else if (widget.index == 1) {
      imagePath1 = 'assets/images/food1.jpg';
      imagePath2 = 'assets/images/food2.jpg';
    } else if (widget.index == 2) {
      imagePath1 = 'assets/images/food3.jpg';
      imagePath2 = 'assets/images/food4.jpg';
    } else if (widget.index == 3) {
      imagePath1 = 'assets/images/img6.jpg';
      imagePath2 = 'assets/images/img8.jpg';
    }

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 209, 208, 208),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                              image: AssetImage(imagePath1),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                              image: AssetImage(imagePath2),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                              image: AssetImage(widget.countryMode.imgPath),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 30,
                //color: Colors.white,
                decoration: BoxDecoration(
                  color:  Colors.black12,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.countryMode.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              widget.countryMode.country,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 99, 98, 98)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
