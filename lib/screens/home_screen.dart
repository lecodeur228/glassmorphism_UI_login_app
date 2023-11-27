import 'package:flutter/material.dart';
import 'package:glassmorphism_app_ui_login/constants.dart';
import 'package:glassmorphism_app_ui_login/screens/signIn_screen.dart';
import 'package:glassmorphism_app_ui_login/screens/signup_screen.dart';
import 'package:glassmorphism_app_ui_login/widgets/button_green_widget.dart';
import 'package:glassmorphism_app_ui_login/widgets/button_widget.dart';
import 'package:glassmorphism_app_ui_login/widgets/glassmorphism_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.13),
            image: DecorationImage(
                image: AssetImage(
                  Constants.background_image,
                ),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: GlassmorphismWidget(
            width: MediaQuery.sizeOf(context).width / 1.1,
            height: MediaQuery.sizeOf(context).height / 2.5,
            child_widget: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Hello!",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Welcome in the sample glassmorphism app UI login !",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      // go to sign in screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()));
                    },
                    child: const ButtonGreenWidget(button_text: "SIGN IN")),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      // go to sign up screen
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()));
                    },
                    child: const ButtonWidget(text_button: "SIGN UP")),
              ],
            )),
      ),
    );
  }
}
