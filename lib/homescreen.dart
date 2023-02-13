import 'package:buttoncomponent/Components/elevated_button_component.dart';
import 'package:buttoncomponent/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      body: Center(
        child: ElevatedButtonComponent(
          onPressed: (){},
          text: "Elevated Button",
          backgroundColor: buttonBackgroundColor,
          hoverColor: hoverColor,
          rippleColor: rippleEffect,
        ),
      ),
    );
  }
}
