import 'package:flutter/material.dart';
import 'package:flash_chat_flutter/screens/registration_screen.dart';
import 'login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat_flutter/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  // Variáveis de Classe (Java)
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

// com Mixin "SingleTickerProviderStateMixin"
class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  // Criar um Animation Controller
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();
    //
    controller = AnimationController(
        duration: Duration(seconds: 1),
        vsync: this,
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white,).animate(controller);

    controller.forward();

    animation.addStatusListener((status) {
    });
    // Adicionar 1 Listen
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Flash Chat',
                      textStyle: const TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                    ),
                    speed: const Duration(milliseconds: 50),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(colour: Colors.lightBlueAccent, title: 'Log In', onPressed: () {Navigator.pushNamed(context, LoginScreen.id);}),
            RoundedButton(colour: Colors.blueAccent, title: 'Register', onPressed: () {Navigator.pushNamed(context, RegistrationScreen.id);}),
          ],
        ),
      ),
    );
  }
}

/*
=> Navigator.pushNamed(context, LoginScreen.id)),
=> Navigator.pushNamed(context, RegistrationScreen.id)),
 */