part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Email Adress',
              style: blackFontStyle3.copyWith(fontSize: 15, color: greyColor),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: blackFontStyle3.copyWith(fontSize: 17),
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Password',
              style: blackFontStyle3.copyWith(fontSize: 15, color: greyColor),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: blackFontStyle3.copyWith(fontSize: 17),
              ),
            ),
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
