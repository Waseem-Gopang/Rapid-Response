import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rapidresponse/sessioncontroller.dart';
import 'package:rapidresponse/verify_email_page.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  DatabaseReference ref = FirebaseDatabase.instance.ref('Users');

  void signUp(
    String username,
    String email,
    String password,
    String phone,
  ) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    UserCredential? userCredential;
    try {
      userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        SessionController().userid = value.user!.uid.toString();

        ref.child(value.user!.uid.toString()).set({
          'email': value.user!.email.toString(),
          'UserName': username,
          'Phone': phone,
        });

        Get.offAll(() => const VerifyEmailPage());
        Get.snackbar("Success", "Sign Up Successfully");
      }).onError((error, stackTrace) {
        if (error.toString().contains("email-already-in-use")) {
          Get.snackbar("Error", "Email Already In Use");
        } else if (error.toString().contains("weak-password")) {
          Get.snackbar("Error", "Password Should Be At Least 6 Characters");
        } else if (error.toString().contains("invalid-email")) {
          Get.snackbar("Error", "Invalid Email");
        } else if (error.toString().contains("network-request-failed")) {
          Get.snackbar("Error", "Check Your Internet Connection");
        } else {
          Get.snackbar("Error", error.toString());
        }
      });
    } catch (error) {
      Get.snackbar("Error", error.toString());
      debugPrint(error.toString());
    }
  }
}
