
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';





class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.awesomeIcon, required this.label})
      : super(key: key);

  final IconData awesomeIcon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          awesomeIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:kLabelTextStyle,
        ),
      ],
    );
  }
}