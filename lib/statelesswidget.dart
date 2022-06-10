import 'portrait_statewidget.dart';
import 'package:flutter/material.dart';
import 'package:highlowflutter/responsivehelper.dart';
import 'landscape_statewidget.dart';
import 'landscape_mobile.dart';
import 'portrait_mobile.dart';

class Textbutton3 extends StatelessWidget {
  const Textbutton3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              'High Low Card Game',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            content: const Text(
              'The aim of the game is to guess whether the next card to be dealt will be higher or lower. Guess right and you win, guess wrong and you lose, its that simple.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
      child: const Text(
        'About',
        style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Textbutton2 extends StatelessWidget {
  const Textbutton2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text(
              'Instructions:',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            content: const Text(
              'Aces are considered to have a value of 1, Jack = 11, Queen = 12, King = 13.                          Guess if the next card is >= or < the current card.                                                                                     Enjoy the Game!',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
      child: const Text(
        'How to Play',
        style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Textbutton1 extends StatelessWidget {
  const Textbutton1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SecondScreen()));
      },
      child: const Text(
        'Play Game',
        style: TextStyle(
          fontFamily: 'IndieFlower',
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

class Imagewidget extends StatelessWidget {
  const Imagewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Image.asset(
        'assets/images/logo.png',
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: ResponsiveWidget(
          mobile: PortraitORLandscape(),
          desktopportrait: MobileMode(),
          desktoplandscape: DesktopMode(),
        ),
      ),
      backgroundColor: Colors.green[200],
    );
  }
}

class DesktopMod extends StatefulWidget {
  const DesktopMod({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopMod> createState() => _DesktopModState();
}

class _DesktopModState extends State<DesktopMod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'High Low Card Game',
              style: TextStyle(
                fontFamily: 'IndieFlower',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 255, 132),
              ),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Imagewidget(),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Textbutton1(),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Textbutton2(),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Textbutton3(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileMod extends StatelessWidget {
  const MobileMod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Padding(padding: EdgeInsets.all(10)),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Text(
                'High Low Card Game',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 255, 132),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Imagewidget(),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Textbutton1(),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Textbutton2(),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Textbutton3(),
            ),
          ],
        ),
      ),
    );
  }
}

class Mobile extends StatelessWidget {
  const Mobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: const [
            Padding(padding: EdgeInsets.all(10)),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Text(
                'High Low Card Game',
                style: TextStyle(
                  fontFamily: 'IndieFlower',
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 255, 132),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Imagewidget(),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Textbutton1(),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Textbutton2(),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Textbutton3(),
            ),
          ],
        ),
      ),
    );
  }
}

class PortraitORLandscape extends StatefulWidget {
  const PortraitORLandscape({Key? key}) : super(key: key);

  @override
  State<PortraitORLandscape> createState() => _PortraitORLandscapeState();
}

class _PortraitORLandscapeState extends State<PortraitORLandscape> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => orientation == Orientation.portrait
          ? buildPortrait()
          : buildLandscape(),
    );
  }

  Widget buildPortrait() => const Scaffold(
        body: MobilePortrait(),
      );

  Widget buildLandscape() => const Scaffold(
        body: MobileLandscape(),
      );
}

class Flipcard extends StatefulWidget {
  final String imgpath;
  const Flipcard({required Key key, required this.imgpath}) : super(key: key);

  @override
  State<Flipcard> createState() => _FlipcardState();
}

class _FlipcardState extends State<Flipcard> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imgpath,
      key: ValueKey<String>(widget.imgpath),
      height: 250,
      width: 175,
      fit: BoxFit.fill,
    );
  }
}

class FlipcardMobile extends StatefulWidget {
  const FlipcardMobile({Key? key, required this.imagpath}) : super(key: key);
  final String imagpath;

  @override
  State<FlipcardMobile> createState() => _FlipcardMobileState();
}

class _FlipcardMobileState extends State<FlipcardMobile> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagpath,
      key: ValueKey<String>(widget.imagpath),
      height: 100,
      width: 50,
      fit: BoxFit.fill,
    );
  }
}

class FlipcardMobileLandscape extends StatefulWidget {
  const FlipcardMobileLandscape({Key? key, required this.imagpath})
      : super(key: key);
  final String imagpath;

  @override
  State<FlipcardMobileLandscape> createState() =>
      _FlipcardMobileLandscapeState();
}

class _FlipcardMobileLandscapeState extends State<FlipcardMobileLandscape> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      widget.imagpath,
      key: ValueKey<String>(widget.imagpath),
      height: 240,
      width: 180,
      fit: BoxFit.fill,
    );
  }
}
