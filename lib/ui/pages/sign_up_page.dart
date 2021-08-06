part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneNumController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController cityController = TextEditingController();

    bool isLoading = false;

    Widget inputName() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Full Name',
              style: blackFontStyle3.copyWith(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              controller: nameController,
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

    Widget inputEmail() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Email Adress',
              style: blackFontStyle3.copyWith(fontSize: 15),
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

    Widget inputPhoneNum() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Phone Number',
              style: blackFontStyle3.copyWith(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              controller: phoneNumController,
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
              'Input Password',
              style: blackFontStyle3.copyWith(fontSize: 15),
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

    Widget confirmPassword() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'Confirm Password',
              style: blackFontStyle3.copyWith(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              obscureText: true,
              controller: confirmPasswordController,
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

    Widget inputCity() {
      return Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(0, 46, defaultMargin, 9),
            child: Text(
              'City',
              style: blackFontStyle3.copyWith(fontSize: 15),
            ),
          ),
          Container(
            width: double.infinity,
            child: TextField(
              controller: cityController,
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

    Widget buttonRegister() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        width: double.infinity,
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: RaisedButton(
          onPressed: () {
            Get.to(MainPage());
          },
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: mainColor,
          child: Text(
            'Register',
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
          inputName(),
          inputEmail(),
          inputPhoneNum(),
          inputPassword(),
          confirmPassword(),
          inputCity(),
          buttonRegister(),
        ],
      ),
    );
  }
}
