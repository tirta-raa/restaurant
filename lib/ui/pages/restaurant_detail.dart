part of 'pages.dart';

class RestaurantDetailPage extends StatefulWidget {
  final Function onBackButtonPressed;

  RestaurantDetailPage({this.onBackButtonPressed});

  @override
  State<RestaurantDetailPage> createState() => _RestaurantDetailPageState();
}

class _RestaurantDetailPageState extends State<RestaurantDetailPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    Widget bgColors() {
      return Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: Container(color: Colors.white),
          )
        ],
      );
    }

    Widget imageHeader() {
      return SafeArea(
        child: Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(''),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    return Container();
  }
}
