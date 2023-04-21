import 'package:flutter/material.dart';

import '../customs/costom_text_card.dart';

class Process extends StatefulWidget {
  static String id = 'Process';

  @override
  State<Process> createState() => _ProcessState();
}

class _ProcessState extends State<Process> {
  bool enabled =
      false; //_isEnable is the boolean variable and set it false, so we have to make it true when user tap on text
  TextEditingController _controller =
      TextEditingController(text: 'Wong Yuk Hei');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 51, 204, 255), width: 1),
                  borderRadius: BorderRadius.circular(5),
                  shape: BoxShape.rectangle,
                ),
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                            Colors.blue,
                            Colors.black,
                            Colors.blue
                          ])),
                      child: Container(
                        width: double.infinity,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Card(
                                // shadowColor: Colors.black,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 5.0),
                                clipBehavior: Clip.antiAlias,
                                color: Colors.white,
                                elevation: 5.0,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 10.0),
                                  child: Row(
                                    children: [
                                      CustomTextCard(
                                        labelText: "Date/Time",
                                        textController: "15-04-2023/04:55",
                                        enabled: enabled,
                                      ),
                                      SizedBox(width: 5),
                                      CustomTextCard(
                                        labelText: "machine",
                                        textController: "MA/2500/2/1000",
                                        enabled: enabled,
                                      ),
                                      SizedBox(width: 5),
                                      CustomTextCard(
                                        labelText: "Material",
                                        textController: "PEHD",
                                        enabled: enabled,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ]),
              ),
            ],
          ),
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.blue, Colors.black, Colors.blue])),
              child: Container(
                width: double.infinity,
                height: 90.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        // shadowColor: Colors.black,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        clipBehavior: Clip.antiAlias,
                        color: Colors.white,
                        elevation: 5.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 10.0),
                          child: Row(
                            children: [
                              CustomTextCard(
                                labelText: "Date/Time",
                                textController: "15-04-2023/04:55",
                                enabled: enabled,
                              ),
                              SizedBox(width: 5),
                              CustomTextCard(
                                labelText: "machine",
                                textController: "MA/2500/2/1000",
                                enabled: enabled,
                              ),
                              SizedBox(width: 5),
                              CustomTextCard(
                                labelText: "Material",
                                textController: "PEHD",
                                enabled: enabled,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
