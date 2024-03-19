import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  TextEditingController txt5 = TextEditingController();
  TextEditingController txt6 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    final double windowHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("verify your phone "),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              myInputBox(context, txt1),
              SizedBox(
                width: 10,
              ),
              myInputBox(context, txt2),
              SizedBox(
                width: 10,
              ),
              myInputBox(context, txt3),
              SizedBox(
                width: 10,
              ),
              myInputBox(context, txt4),
              SizedBox(
                width: 10,
              ),
              myInputBox(context, txt5),
              SizedBox(
                width: 10,
              ),
              myInputBox(context, txt6),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/Createaccount");
        },
        child: Text('continue'),
      ),
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(counterText: ''),
      textAlign: TextAlign.center,
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
