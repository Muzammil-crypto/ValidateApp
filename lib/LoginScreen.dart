import 'package:client_authentication_demo/components/bottomLine.dart';
import 'package:client_authentication_demo/components/textfieldComponent.dart';
import 'package:client_authentication_demo/forgotPassword.dart';
import 'package:client_authentication_demo/sweepAnimation.dart';
import 'package:flutter/material.dart';

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
          // ignore: sized_box_for_whitespace
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
                      child: Row(
                        children: [
                          const Text(
                            "Fresh",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                          Text(
                            "Track",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              color: Colors.blue.shade800,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    // Positioned(
                    //     left: 15,
                    //     bottom: MediaQuery.of(context).size.height / 5,
                    //     child: Center(
                    //       child: ElevatedButton(
                    //         child: Container(
                    //           height: 45,
                    //           width: MediaQuery.of(context).size.width / 1.2,
                    //           child: Center(
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(14.0),
                    //               child: Text('Acceder'),
                    //             ),
                    //           ),
                    //         ),
                    //         onPressed: () {},
                    //         style: ButtonStyle(
                    //           backgroundColor:
                    //               MaterialStateProperty.resolveWith<Color>(
                    //             (Set<MaterialState> states) {
                    //               if (states.contains(MaterialState.pressed))
                    //                 return Colors.green.shade700;
                    //               return Colors.blue.shade900;
                    //             },
                    //           ),
                    //         ),
                    //       ),
                    //     )),
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
                            SizedBox(
                              width: 60,
                            ),
                            InkWell(
                              child: Text(
                                "mot de passe oublie?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgetPassword()),
                                ),
                              },
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
                            SizedBox(
                              width: 10,
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
