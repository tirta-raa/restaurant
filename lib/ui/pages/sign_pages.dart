part of 'pages.dart';

class SignPage extends StatefulWidget {
  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  /// angka untuk memulai tab yang di pilih
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget logoAndTabBar() {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // * logo *
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 55),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // * End logo *

          // *Tab Bar
          CustomTabBar(
            titles: ['Sign - In', 'Sign - Up'],
            selectedIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          )
          // * End Tab Bar
        ],
      );
    }

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          bottom: false,
          child: Container(
            color: 'FAFAFC'.toColor(),
            child: ListView(
              children: [
                // * White Bg *
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 382,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),

                  // * End White Bg *

                  child: logoAndTabBar(),
                ),

                // * chose Page *
                // ? arti kode di bawha jika di pilih signup munculkan sign up

                (selectedIndex == 0) ? SignInPage() : SignUpPage(),

                // * End chose Page *
              ],
            ),
          ),
        ),
      ),
    );
  }
}
