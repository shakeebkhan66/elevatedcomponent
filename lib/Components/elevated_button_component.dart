import 'package:buttoncomponent/constants/colors.dart';
import 'package:flutter/material.dart';

class ElevatedButtonComponent extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color backgroundColor;
  Color hoverColor;
  Color rippleColor;
  ElevatedButtonComponent(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.backgroundColor,
      required this.hoverColor,
      required this.rippleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // style: ElevatedButton.styleFrom(
      //  backgroundColor: backgroundColor,
      //   elevation: 10,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(15),
      //   ),
      // ),
      style: ButtonStyle(
        fixedSize:
        MaterialStateProperty.all(const Size(200, 60)),
        overlayColor: getColor(hoverColor, rippleColor),
        // foregroundColor: getColor(hoverColor, hoverColor),
        backgroundColor: getColor(backgroundColor, hoverColor),
      ),
      child: Text(text, style: const TextStyle(color: Colors.white),),
    );
  }

  // TODO
 MaterialStateProperty<Color> getColor(Color color, Color colorPressed){
    final getColor = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return colorPressed;
      }else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
 }


}
