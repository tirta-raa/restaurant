part of 'pages.dart';

class RestaurantPage extends StatefulWidget {
  @override
  _RestaurantPageState createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    Widget restaurantCard() {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 258,
        width: double.infinity,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: mockRestaurant
              .map(
                (e) => Padding(
                  padding: EdgeInsets.only(
                      left: (e == mockRestaurant.first) ? defaultMargin : 0,
                      right: defaultMargin),
                  child: RestaurantCard(e),
                ),
              )
              .toList(),
        ),
      );
    }

    Widget tabBar() {
      return Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            CustomTabBar(
                titles: [
                  'Terfavorit',
                  'Paling Dekat',
                ],
                selectedIndex: selectedIndex,
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }),
            SizedBox(
              height: 16,
            ),
            Builder(
              builder: (_) {
                List<RestaurantModels> restaurant = (selectedIndex == 0)
                    ? mockRestaurant
                    : (selectedIndex == 1)
                        ? []
                        : [];

                return Column(
                  children: restaurant
                      .map(
                        (e) => Padding(
                          padding: EdgeInsets.fromLTRB(
                              defaultMargin, 0, defaultMargin, 16),
                          child: RestaurantListItem(
                            restaurant: e,
                            itemWidht: listItemWidth,
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      );
    }

    return GeneralPage(
      title: 'Restaurants',
      subtitle: 'Yuk cari restaurant',
      picturePath:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
      child: Column(
        children: [
          restaurantCard(),
          tabBar(),
        ],
      ),
    );
  }
}
