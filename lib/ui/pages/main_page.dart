part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    Widget bgColor() {
      return Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
        ],
      );
    }

    Widget body() {
      return SafeArea(
        child: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          children: [
            Center(
              child: RestaurantPage(),
            ),
            Center(
              child: IlustrationFavoritPage(),
            ),
            Center(
              child: IlustrationOrderEmpetyPage(),
            ),
            Center(
              child: ProfilePage(
                UserModels(
                  id: 1,
                  name: 'Dini Adwa',
                  email: 'abc@gmail.com',
                  phoneNumber: '0852-0852-0852',
                  address: 'Jalan 123 Bogor Selatan',
                  picturePath:
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget navBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: CustomBottomNavBar(
          selectedIndex: selectedPage,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
            pageController.jumpToPage(selectedPage);
          },
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          bgColor(),
          body(),
          navBar(),
        ],
      ),
    );
  }
}
