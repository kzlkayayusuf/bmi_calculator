
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.color,
    this.cardChild, this.onPress
  }) : super(key: key);

  //Immutability and final vs. const -> bu iki property değiştirilemezdir.
  final Color color;
  final Widget? cardChild;
  final void Function()? onPress;

  //dry => do not repeat yourself
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
