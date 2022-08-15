import 'package:client_authentication_demo/components/HeaderText.dart';
import 'package:flutter/material.dart';

import 'package:client_authentication_demo/Screens/ForgetPasswordScreen.dart';
import 'package:client_authentication_demo/components/AnimatedButton.dart';
import 'package:client_authentication_demo/components/BottomLine.dart';
import 'package:client_authentication_demo/components/InputTextfield.dart';

import '../components/ClickAbleText.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [Colors.blue, Colors.white, Colors.white, Colors.white],
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Stack(
                  children: [
                    Positioned(
                        top: 90,
                        left: MediaQuery.of(context).size.width / 3,
                        child: HeaderText()),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 3.2,
                      top: MediaQuery.of(context).size.height / 3.5,
                      child: const Center(
                        child: Text(
                          "Bienvenue",
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 2.1 - 5,
                        left: 15,
                        child: const Text(
                          "Se Connecter",
                          style: TextStyle(
                              fontSize: 19,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: TextFieldComponent(labelName: "Username"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: TextFieldComponent(
                                labelName: "Password",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 170, left: 20, child: SweepAnimmatedButton()),
                    Positioned(
                        bottom: 225,
                        left: 30,
                        child: Row(
                          children: [
                            InkWell(
                              child: const Text(
                                "Se Souvenier de moi",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                              onTap: () => {},
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            ClickableOptions(
                              buttonTitle: "mot de passe oublie?",
                              pageAddress: const ForgetPassword(),
                            ),
                          ],
                        )),
                    Positioned(
                      bottom: 130,
                      left: 30,
                      child: Container(
                        child: Row(
                          children: [
                            const Text(
                              "Nouveau utilisateur?",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "creer votre compte",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    BottomLine(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
