import 'package:client_authentication_demo/components/bottomLine.dart';
import 'package:flutter/material.dart';
import 'package:client_authentication_demo/components/textfieldComponent.dart';
import 'package:flutter/material.dart';

class RecoveryFromScreen extends StatefulWidget {
  const RecoveryFromScreen({Key? key}) : super(key: key);

  @override
  State<RecoveryFromScreen> createState() => _RecoveryFromScreenState();
}

class _RecoveryFromScreenState extends State<RecoveryFromScreen> {
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
                                color: Colors.blue.shade800,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 15,
                      top: MediaQuery.of(context).size.height / 3.1,
                      child: Center(
                        child: Row(children: [
                          InkWell(
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.blue.shade900,
                            ),
                            onTap: () => {
                              Navigator.pop(context),
                            },
                          ),
                          Text(
                            " Recuperation de votre mot de passe",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                        top: MediaQuery.of(context).size.height / 2.3,
                        left: 16,
                        //Recuperation de votre mot de passe
                        child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Un code de recupertion a ete envoye a email@gmail.com",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3.0, bottom: 5),
                                  child: Text(
                                    "Renoyer le code de recurption",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ))),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 1.95,
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 15),
                              child: TextFieldComponent(
                                  labelName: "Code de recuperation"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 15),
                              child: TextFieldComponent(
                                  labelName: "Code de recuperation"),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 15),
                              child: TextFieldComponent(
                                  labelName: "Code de recuperation"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 15,
                        bottom: MediaQuery.of(context).size.height / 6,
                        child: Center(
                          child: ElevatedButton(
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text('Suivant'),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed))
                                    return Colors.green.shade700;
                                  return Colors.blue.shade900;
                                },
                              ),
                            ),
                          ),
                        )),
                    BottomLine(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
