import 'package:flutter/material.dart';
import 'package:flutter_application_6/screens/login_screen.dart';
import 'package:flutter_application_6/screens/registration_screen.dart';
import '../components/rounded_button.dart';
import 'package:animated_text_kit/animated_text_kit.dart';



class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
//Ticker
//animation controller
//animation value
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1,),
      //upperBound: 100.0,
    );

    //animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
    animation = ColorTween(begin: Colors.grey, end: Colors.white).animate(controller);
    

    controller.forward();

    /*animation.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        controller.reverse(from: 1.0);
      }
      else if(status == AnimationStatus.dismissed){
        controller.forward();
      }
     });*/

    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  //'${controller.value.toInt()}%', counter to 100
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(type: 'Log in', color: Colors.lightBlueAccent, pushTo: LoginScreen.id),
            RoundedButton(type: 'Register', color: Colors.blueAccent, pushTo: RegistrationScreen.id),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     elevation: 5.0,
            //     color: Colors.lightBlueAccent,
            //     borderRadius: BorderRadius.circular(30.0),
            //     child: MaterialButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, LoginScreen.id);
            //       },
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: Text(
            //         'Log In',
            //       ),
            //     ),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 16.0),
            //   child: Material(
            //     color: Colors.blueAccent,
            //     borderRadius: BorderRadius.circular(30.0),
            //     elevation: 5.0,
            //     child: MaterialButton(
            //       onPressed: () {
            //         Navigator.pushNamed(context, RegistrationScreen.id);
            //       },
            //       minWidth: 200.0,
            //       height: 42.0,
            //       child: Text(
            //         'Register',
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
