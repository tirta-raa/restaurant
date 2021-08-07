part of 'pages.dart';

class RestaurantDetailPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final TrasnsactionModels transaction;

  RestaurantDetailPage({this.onBackButtonPressed, this.transaction});

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
              image: NetworkImage(widget.transaction.restaurant.picturePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    }

    Widget whiteBackButton() {
      return Container(
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: () {
              if (widget.onBackButtonPressed != null) {
                widget.onBackButtonPressed();
              }
            },
            child: Container(
                padding: EdgeInsets.all(3),
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.black12,
                ),
                child: Image.asset(
                  'assets/back_arrow.png',
                  color: Colors.white,
                )),
          ),
        ),
      );
    }

    return Container();
  }
}
