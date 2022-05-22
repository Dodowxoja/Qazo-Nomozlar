import 'package:flutter/material.dart';
import 'package:qazo_nomozlar/core/components/my_text_style.dart';

class LangButton {
  static InkWell langButton(textLang, flagLang, context) {
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
        Navigator.pushNamed(context, '/onbording');
      },
    );
  }
}
