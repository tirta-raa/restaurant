part of 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onTap;

  CustomBottomNavBar({this.selectedIndex = 0, this.onTap});

  @override
  Widget build(BuildContext context) {
    Widget homeButton() {
      return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap(0);
          }
        },
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/home' + ((selectedIndex == 0) ? '1.png' : 'png'),
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      );
    }

    Widget favoritButton() {
      return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap(1);
          }
        },
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/heart' + ((selectedIndex == 1) ? '1.png' : 'png'),
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      );
    }

    Widget historyButton() {
      return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap(2);
          }
        },
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/history' + ((selectedIndex == 2) ? '1.png' : 'png'),
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      );
    }

    Widget profileButton() {
      return GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap(3);
          }
        },
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/user' + ((selectedIndex == 3) ? '1.png' : 'png'),
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
      );
    }

    return Container(
      height: 60,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          homeButton(),
          favoritButton(),
          historyButton(),
          profileButton(),
        ],
      ),
    );
  }
}
