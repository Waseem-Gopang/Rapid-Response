import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidresponse/loginscreen.dart';
import 'package:rapidresponse/signup_screen.dart';

class FooterWidget extends StatelessWidget {
  final String texts, title;
  const FooterWidget({
    Key? key,
    required this.texts,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.transparent)))),
            onPressed: () {
              if (Title == "Login") {
                Get.off(() => const LoginScreen());
              } else {
                Get.to(() => const SignUpScreen());
              }
            },
            child: Text.rich(
              TextSpan(
                  text: texts,
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    TextSpan(
                        text: title,
                        style: const TextStyle(color: Colors.lightBlueAccent))
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
