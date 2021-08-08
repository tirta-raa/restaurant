part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  final UserModels user;

  ProfilePage(this.user);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Widget titleText() {
      return Container(
        margin: EdgeInsets.fromLTRB(defaultMargin, 100, 0, 12),
        child: Text(
          'Information',
          style: blackFontStyle3.copyWith(
              fontSize: 17, fontWeight: FontWeight.w600),
        ),
      );
    }

    Widget profilePicture() {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 20, 15, 0),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(widget.user.picturePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    Widget detailInformations() {
      return Container(
        margin: EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * User Name

            Text(
              widget.user.name,
              style: blackFontStyle3.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),

            // * User Email

            Text(
              widget.user.email,
              style: greyFontStyle.copyWith(fontSize: 12),
            ),

            // * User phone number

            Text(
              widget.user.phoneNumber,
              style: greyFontStyle.copyWith(fontSize: 12),
            ),
            SizedBox(height: 4),

            // * User address

            Text(
              widget.user.address,
              style: greyFontStyle.copyWith(fontSize: 12),
            ),
          ],
        ),
      );
    }

    Widget editButton() {
      return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(left: 30),
          width: 17,
          height: 17,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/pen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              titleText(),

              // * Profile Card

              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  width: 315,
                  height: 133,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      profilePicture(),
                      detailInformations(),
                      editButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
