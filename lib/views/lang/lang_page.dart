import 'package:flutter/material.dart';
import 'package:qazo_nomozlar/core/components/my_text_style.dart';

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
                  langButton("O'zbek tili", "uzb", context),
                  const Divider(),
                  langButton("Ўзбек тили", "uzb", context),
                  const Divider(),
                  langButton("Русский язык", "rus", context),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  InkWell langButton(textLang, flagLang, context) {
    return InkWell(
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset('assets/images/${flagLang}_flag.png'),
            const SizedBox(width: 15),
            Text(
              textLang,
              style: MyTextStyle.myTextStyle(
                size: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      onTap: () {
        // Navigator.pushNamed(context, '/onbording');
      },
    );
  }
}
