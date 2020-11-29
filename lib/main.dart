import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Calculatorstate();
  }
}

class _Calculatorstate extends State<MyApp> {
  double result = 0.0;
  double num1, num2;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Calculator"),
            centerTitle: true,
            backgroundColor: Colors.orange,
          ),
          body: Container(
            margin: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          result = num1 + num2;
                        });
                      },
                      color: Colors.orange,
                      child: new Text(
                        "+",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30, left: 30),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          result = num1 - num2;
                        });
                      },
                      color: Colors.orange,
                      child: new Text(
                        "-",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ]),
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          result = num1 * num2;
                        });
                      },
                      color: Colors.orange,
                      child: new Text(
                        "*",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30, left: 30),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          result = num1 / num2;
                        });
                      },
                      color: Colors.orange,
                      child: new Text(
                        "/",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                ]),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "First number",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.orange))),
                        onChanged: (value) {
                          setState(() {
                            num1 = double.parse(value);
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "second number",
                            enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: Colors.orange))),
                        onChanged: (value) {
                          setState(() {
                            num2 = double.parse(value);
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Colors.orange,
                    splashColor: Colors.green[200],
                  ),
                ),
                Text(
                  "Result : $result",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          )),
    );
  }
}
