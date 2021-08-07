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
    return GeneralPage(
      title: 'Restaurants',
      subtitle: 'Yuk cari restaurant',
      picturePath:
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
      child: Column(
        children: [
          Container(
            height: 258,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                RestaurantCard(mockRestaurant),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
