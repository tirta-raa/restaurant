part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String picturePath;
  final Function onBackButtonPressed;
  final Widget child;
  final Color backColor;

  GeneralPage(
      {this.title = 'Tittle',
      this.subtitle = 'subtittle',
      this.picturePath,
      this.onBackButtonPressed,
      this.child,
      this.backColor});

  @override
  Widget build(BuildContext context) {
    Widget bgColor() {
      return Container(
        color: Colors.white,
        child: SafeArea(
          child: Container(
            color: backColor ?? Colors.white,
          ),
        ),
      );
    }

    Widget backButton() {
      return onBackButtonPressed != null
          ? GestureDetector(
              onTap: () {
                if (onBackButtonPressed != null) {
                  onBackButtonPressed();
                }
              },
              child: Container(
                width: 24,
                height: 24,
                margin: EdgeInsets.only(right: defaultMargin),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/back_arrow.png'),
                )),
              ),
            )
          : SizedBox();
    }

    Widget titleAndSubtitle() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            subtitle,
            style: GoogleFonts.poppins(
              color: greyColor,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      );
    }

    Widget profilePicture() {
      return (picturePath != null)
          ? Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(picturePath),
                  fit: BoxFit.cover,
                ),
              ),
            )
          : SizedBox();
    }

    Widget secondBgColor() {
      return Container(
        height: defaultMargin,
        width: double.infinity,
        color: 'FAFAFC'.toColor(),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          bgColor(),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          backButton(),
                          titleAndSubtitle(),
                          Spacer(),
                          profilePicture(),
                        ],
                      ),
                    ),
                    secondBgColor(),
                    child ?? SizedBox(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
