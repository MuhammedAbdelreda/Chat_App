import 'package:flutter/material.dart';
import '../screens/registration_screen.dart';
import '../screens/login_screen.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({required this.type, required this.color,required this.pushTo});

  String type;
  Color color;
  String pushTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            Navigator.pushNamed(context, pushTo);
          },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            type,
          ),
        ),
      ),
    );
  }
}
