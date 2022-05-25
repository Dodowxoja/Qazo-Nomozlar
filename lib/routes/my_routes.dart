import 'package:flutter/material.dart';
import 'package:qazo_nomozlar/views/lang/lang_page.dart';
import 'package:qazo_nomozlar/views/onbording/view/onbording_page.dart';
import 'package:qazo_nomozlar/views/splash/splash_page.dart';

class MyRoutes {
  static final MyRoutes _instance = MyRoutes._init();
  static MyRoutes get instance => _instance;
  MyRoutes._init();

  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
        return MaterialPageRoute(builder: (context) => const SplashView());
      case '/lang':
        return MaterialPageRoute(builder: (context) => const LangView());
      case '/onbording':
        return MaterialPageRoute(builder: (context) => const OnBordingView());
      case '/log_in':
      // return MaterialPageRoute(builder: (context) => );
      case '/sign_up':
      // return MaterialPageRoute(builder: (context) => );
      case '/datatime':
      // return MaterialPageRoute(builder: (context) => );
      case '/cart':
      // return MaterialPageRoute(builder: (context) => );
    }
  }
}
