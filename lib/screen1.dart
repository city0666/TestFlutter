import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MainContainer(),
      ),
    );
  }
}

class MainContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;
    return Container(
      width: windowWidth,
      height: windowHeight,
      color: Colors.orange,
      child: Column(
        children: [
          Container(
              height: windowHeight - 750,
              color: Colors.orange,
              child: Center(child: Text('hello'))),
          Container(
            height: 742,
            width: windowWidth,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                Text(
                  'Create an Account',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                SizedBox(
                  width: windowWidth - 60,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter first name",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            )),
                            isDense: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter middle name",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            )),
                            isDense: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter last name",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            )),
                            isDense: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter mobile number",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            )),
                            isDense: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Pssword",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            )),
                            isDense: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Confirm Password",
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1.5,
                            )),
                            isDense: true),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FloatingActionButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/Screen2");
                          },
                          child: Text('continue'))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
