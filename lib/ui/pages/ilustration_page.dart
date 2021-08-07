part of 'pages.dart';

class IlustrationPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String buttonTitle2;
  final Function buttonTap1;
  final Function buttonTap2;

  IlustrationPage(
      {@required this.title,
      @required this.subtitle,
      @required this.picturePath,
      @required this.buttonTitle1,
      @required this.buttonTap1,
      this.buttonTitle2,
      this.buttonTap2});

  @override
  Widget build(BuildContext context) {
    Widget ilustrationImage() {
      return Container(
        margin: EdgeInsets.only(bottom: 30),
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(picturePath),
          ),
        ),
      );
    }

    Widget titleText() {
      return Text(
        title,
        style: blackFontStyle3.copyWith(fontSize: 20),
      );
    }

    Widget subtitleText() {
      return Text(
        subtitle,
        style: greyFontStyle.copyWith(fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      );
    }

    Widget mainButton() {
      return Container(
        margin: EdgeInsets.only(top: 30, bottom: 12),
        width: 200,
        height: 45,
        child: ElevatedButton(
          onPressed: buttonTap1,
          style: ElevatedButton.styleFrom(
              primary: mainColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30))),
          child: Text(
            buttonTitle1,
            style: blackFontStyle3.copyWith(
                fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      );
    }

    Widget secondaryButton() {
      return SizedBox(
        width: 200,
        height: 45,
        child: ElevatedButton(
          onPressed: buttonTap2,
          style: ElevatedButton.styleFrom(
            primary: '8D92A3'.toColor(),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            buttonTitle2 ?? 'title',
            style: blackFontStyle3.copyWith(
                fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      );
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ilustrationImage(),
          titleText(),
          subtitleText(),
          mainButton(),
          (buttonTap2 == null) ? SizedBox() : secondaryButton(),
        ],
      ),
    );
  }
}
