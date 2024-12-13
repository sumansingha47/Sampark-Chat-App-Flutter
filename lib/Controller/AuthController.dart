import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final auth = FirebaseAuth.instance;
  RxBool isLoading = false.obs;

  // FOR LOGIN

  Future<void> login(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        log("No user found for that email.");
      } else if (e.code == "wrong-password") {
        log("Wrong password provided for that user");
      } else {
        log("Firebase error => ${e.code}");
      }
    } catch (e) {
      log("Other error => $e");
    }

    isLoading.value = false;
  }

  Future<void> createUser(String email, String password) async {
    isLoading.value = true;
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      log("Account Created!");
      Get.toNamed("/loginPage");
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-pasword") {
        log("The password provided is too weak.");
      } else if (e.code == "email-already-in-use") {
        log("The account already exists for that email.");
      }
    } catch (e) {
      log(e.toString());
    }
    isLoading.value = false;
  }
}
