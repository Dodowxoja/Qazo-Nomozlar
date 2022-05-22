import 'package:flutter/material.dart';
import 'package:qazo_nomozlar/core/components/lang_button.dart';

class LangView extends StatelessWidget {
  const LangView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/vector_green.png'),
          const Text('Tilni tanlang / Выберите язык'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 240,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LangButton.langButton("O'zbek tili", "uzb", context),
                  const Divider(),
                  LangButton.langButton("Ўзбек тили", "uzb", context),
                  const Divider(),
                  LangButton.langButton("Русский язык", "rus", context),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
