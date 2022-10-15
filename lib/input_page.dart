import 'package:flutter/material.dart';

const bottomContainerHeight=80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor= Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children:const  [
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
              ],
            ),
          ),
         const  Expanded(
            child: ReusableCard(color: activeCardColor,),
          ),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
                Expanded(
                  child: ReusableCard(color: activeCardColor,),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin:const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
   const ReusableCard({
    Key? key, required this.color
  }) : super(key: key);

   //Immutability and final vs. const -> bu iki property değiştirilemezdir.
  final Color color;

  //dry => do not repeat yourself
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
