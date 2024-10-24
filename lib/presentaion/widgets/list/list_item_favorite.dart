import 'package:flutter/material.dart';
import 'package:flutter_recipee_app/presentaion/widgets/custom_sizedbox.dart';

class FavoriteListItem extends StatelessWidget {
  final String pictureUrl;
  final String name;
  final String time;
  final String county;
  final int index;
  const FavoriteListItem(
      {Key? key,
      required this.pictureUrl,
      required this.name,
      required this.time,
      required this.county,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color:  Colors.blueGrey.shade500,
          //color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(pictureUrl))),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(2)),
                  child: Center(
                    child: Text(
                      name,
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const CustomSizedBox(spaceSizeWidth: 0, spaceSizeHeight: 20),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  //_createPersonInRow(key: 'name', value: name, context: context),
                  _createPersonInRow(
                      key: 'Time', value: time, context: context),
                  _createPersonInRow(
                      key: 'Country', value: county, context: context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Row _createPersonInRow(
    {required String key,
    required String value,
    required BuildContext context}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Flexible(
          child: Text(
        '$key:',
        style: Theme.of(context).textTheme.bodyMedium,
      )),
      const Spacer(),
      Expanded(
          child: Text(
        value,
        style: Theme.of(context).textTheme.bodyMedium,
      ))
    ],
  );
}
