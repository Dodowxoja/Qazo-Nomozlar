import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Image.asset(
              'assets/images/rectangle1.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
