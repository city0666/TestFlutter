import 'dart:ffi';

import 'package:flutter/material.dart';

class GradientStateFull extends StatefulWidget {
  const GradientStateFull({super.key});

  @override
  State<GradientStateFull> createState() => __GradientStateFullState();
}

class __GradientStateFullState extends State<GradientStateFull> {
  var kanexyImg = 'assets/images/kanexy_white.png';


  void removeBG() {
    setState(() {
       kanexyImg = 'assets/images/kanexy_withoutBg.png';
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              kanexyImg,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: removeBG,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(
                //   top: 20,
                // ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Remove Background'),
            )
          ],
        );
     
  }


}