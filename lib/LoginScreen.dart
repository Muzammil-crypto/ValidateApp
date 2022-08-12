import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    FocusNode myFocusNode = FocusNode();

    myFocusNode.addListener(() {
      setState(() {});
    });
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
                                color: Colors.blue.shade800,
                                fontFamily: "Segoe-ui"),
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
                              child: TextFieldComponent(labelName: "Password"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        left: 15,
                        bottom: MediaQuery.of(context).size.height / 5,
                        child: Center(
                          child: ElevatedButton(
                            child: Container(
                              height: 45,
                              width: MediaQuery.of(context).size.width / 1.2,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text('Acceder'),
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
                    Positioned(
                        bottom: 225,
                        left: 30,
                        child: Row(
                          children: [
                            const Text(
                              "Se Souvenier de moi",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              "mot de passe oublie?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
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
                    Positioned(
                      left: 50,
                      bottom: 20,
                      child: InkWell(
                        child: Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Row(
                              children: [
                                Text(
                                  "suivre uneexpedition sans se connecter",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 25,
                                )
                              ],
                            )),
                        onTap: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

// ignore: must_be_immutable
class TextFieldComponent extends StatelessWidget {
  late String labelName;
  TextFieldComponent({
    Key? key,
    required this.labelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.left,
      decoration: InputDecoration(
          isDense: true,
          labelText: labelName,
          labelStyle: const TextStyle(color: Colors.black, fontSize: 14),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10)),
          fillColor: Colors.black12,
          filled: true,
          // hintText: 'Username',
          hintStyle: const TextStyle(
              fontFamily: "BubblegumSans",
              fontSize: 14.0,
              color: Colors.black)),
    );
  }
}
