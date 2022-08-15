import 'package:flutter/material.dart';

import '../Components/InputTextfield.dart';

class TextFieldGenerate extends StatefulWidget {
  const TextFieldGenerate({Key? key}) : super(key: key);

  @override
  State<TextFieldGenerate> createState() => _TextFieldGenerateState();
}

class _TextFieldGenerateState extends State<TextFieldGenerate> {
  bool condition = false;
  late TextEditingController textController;
  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    void showTextFields() {
      setState(() {
        condition = !condition;
      });
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [Colors.blue, Colors.white, Colors.white, Colors.white],
              ),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(top: 200),
              child: Column(children: [
                IconButton(
                    onPressed: showTextFields,
                    icon: Icon(
                      Icons.zoom_in_map_outlined,
                      size: 30,
                    )),
                (condition == true)
                    ? Container(
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 15),
                            child: TextFieldComponent(labelName: "Code de "),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 15),
                            child: TextFieldComponent(
                                labelName: " de recuperation"),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 15),
                            child: TextFieldComponent(labelName: "Code "),
                          ),
                        ]),
                      )
                    : SizedBox()
              ]),
            )),
      ),
    );
  }
}




     
                
                 





// Scaffold(
//         body: Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topLeft,
//                 colors: [Colors.blue, Colors.white, Colors.white, Colors.white],
//               ),
//             ),
//             child: Stack(children: [
//               Positioned(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height / 2,
//                   margin: EdgeInsets.only(left: 120),
//                   child: Center(
//                     child: Row(
//                       children: [
//                         IconButton(
//                             onPressed: showTextFields,
//                             icon: Icon(
//                               Icons.zoom_in_map_outlined,
//                               size: 30,
//                             )),
//                         IconButton(
//                             onPressed: showTextFields,
//                             icon: Icon(
//                               Icons.yard,
//                               size: 30,
//                             )),
//                         (condition == true)
//                             ? Container(
//                                 height: 500,
//                                 child: ListView(children: [
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 6, horizontal: 15),
//                                     child: TextFieldComponent(
//                                         labelName: "Code de "),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 6, horizontal: 15),
//                                     child: TextFieldComponent(
//                                         labelName: " de recuperation"),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(
//                                         vertical: 6, horizontal: 15),
//                                     child:
//                                         TextFieldComponent(labelName: "Code "),
//                                   ),
//                                 ]),
//                               )
//                             : SizedBox()
//                       ],
//                     ),
//                   ),
//                 ),
//               )
//             ])));