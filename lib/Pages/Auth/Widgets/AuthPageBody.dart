import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark_chat_app_24/Pages/Auth/Widgets/LoginForm.dart';
import 'package:sampark_chat_app_24/Pages/Auth/Widgets/SignupForm.dart';

class AuthPageBody extends StatelessWidget {
  const AuthPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isLogin = false.obs;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          // height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              isLogin.value = true;
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width / 2.7,
                              child: Column(
                                children: [
                                  Text(
                                    "Login",
                                    style: isLogin.value
                                        ? Theme.of(context).textTheme.bodyLarge
                                        : Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                  ),
                                  const SizedBox(height: 5),
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    width: isLogin.value ? 100 : 0,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              isLogin.value = false;
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width / 2.7,
                              child: Column(
                                children: [
                                  Text(
                                    "Signup",
                                    style: isLogin.value
                                        ? Theme.of(context).textTheme.labelLarge
                                        : Theme.of(context).textTheme.bodyLarge,
                                  ),
                                  const SizedBox(height: 5),
                                  AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    width: isLogin.value ? 0 : 100,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(
                      () => isLogin.value
                          ? const LoginForm()
                          : const SignupForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
