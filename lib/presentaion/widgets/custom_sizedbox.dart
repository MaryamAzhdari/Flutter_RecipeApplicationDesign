import 'package:flutter/widgets.dart';

class CustomSizedBox extends StatelessWidget {
  final double spaceSizeWidth;
  final double spaceSizeHeight;

  const CustomSizedBox({
    Key? key,
    required this.spaceSizeWidth,
    required this.spaceSizeHeight
  }) 
  :super (key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spaceSizeHeight,
      width: spaceSizeWidth,
    );
  }
}