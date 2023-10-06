import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidresponse/formfooter.dart';
import 'package:rapidresponse/loginscreen.dart';
import 'package:rapidresponse/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(40),
          ),
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(Get.height * 0.1),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Center(
                    child: SizedBox.fromSize(
                      size: const Size(36, 36),
                      child: ClipOval(
                        child: Material(
                          color: Colors.lightBlueAccent,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {
                              Get.to(() => const LoginScreen());
                            },
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          image:
                              const AssetImage("assets/emergencyAppLogo.png"),
                          height: Get.height * 0.1),
                      Container(
                        margin: const EdgeInsets.only(top: 8),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: const Column(
            children: [
              SignUpFormWidget(),
              FooterWidget(texts: "Already have Account ", title: "Login")
            ],
          ),
        ),
      ),
    );
  }
}
