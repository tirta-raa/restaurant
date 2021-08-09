part of 'pages.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final isLoading = false;

  @override
  Widget build(BuildContext context) {
    Widget inputEmail() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Email Adress',
              style: blackFontStyle3.copyWith(
                fontSize: 15,
              ),
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
        ],
      );
    }

    Widget inputPassword() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Password',
              style: blackFontStyle3.copyWith(
                fontSize: 15,
              ),
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
      );
    }

    Widget buttonForgotPassword() {
      return TextButton(
        onPressed: () {},
        child: Text(
          'Forgot Password ?',
          style: blackFontStyle3.copyWith(color: mainColor),
        ),
      );
    }

    Widget buttonSignIn() {
      return Container(
        margin: EdgeInsets.only(top: 50, bottom: 20),
        width: double.infinity,
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ElevatedButton(
                onPressed: () {
                  Get.to(MainPage());
                },
                style: ElevatedButton.styleFrom(
                  primary: mainColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: blackFontStyle3.copyWith(color: Colors.white),
                ),
              ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputEmail(),
          inputPassword(),
          buttonForgotPassword(),
          buttonSignIn(),
        ],
      ),
    );
  }
}
