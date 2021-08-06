part of 'pages.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin, left: defaultMargin),
        width: 73,
        height: 73,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage('assets/lg.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget textFoodForEveryone() {
      return Container(
        margin: EdgeInsets.only(top: 160, left: defaultMargin),
        child: Text(
          'Food for Everyone',
          style: whiteFontStyle,
        ),
      );
    }

    Widget imagePerson() {
      return Padding(
        padding: EdgeInsets.only(top: 347, bottom: 60),
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return LinearGradient(
              colors: [mainColor, Colors.transparent],
              begin: Alignment.center,
              end: Alignment.bottomCenter,
            ).createShader(
              Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),
            );
          },
          blendMode: BlendMode.dstIn,
          child: Image.asset(
            'assets/person.png',
            width: MediaQuery.of(context).size.width,
            height: 453,
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    Widget buttonGetStarted() {
      return Container(
        width: 314,
        height: 70,
        margin: EdgeInsets.fromLTRB(defaultMargin, 830, defaultMargin, 36),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: RaisedButton(
          onPressed: () {
            Get.to(SignPage());
          },
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Colors.white,
          child: Text(
            'Get Started',
            style: blackFontStyle3.copyWith(color: mainColor),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: mainColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Stack(
              children: [
                logo(),
                textFoodForEveryone(),
                imagePerson(),
                buttonGetStarted(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
