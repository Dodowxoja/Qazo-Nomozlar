import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _spash(context);
  }

  _spash(context) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.pushReplacementNamed(context, '/lang');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Colors.green,
        image: DecorationImage(
          image: AssetImage('assets/images/vector_white.png'),
        ),
      ),
    );
  }
}
