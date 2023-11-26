
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoButtons extends StatefulWidget{
  const DemoButtons({super.key});


  @override
  State<DemoButtons> createState() {
    return DemoButtonState();
  }

}

class DemoButtonState extends State<DemoButtons>{
  bool isUnderstood = false ;


  @override
  Widget build(BuildContext context) {
    print('demo buttons BUILD called');

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isUnderstood = false;
                });
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isUnderstood = true;
                });
              },
              child: const Text('Yes'),
            ),
          ],
        ),
        if (isUnderstood) const Text('Awesome!'),
      ],
    );
  }

}