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

    Widget titleRatingButtonQty() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 134,
                // 16 horizontal margin = 32
                // 26 widht heigh 26 = 52
                // quantyty text 50
                child: Text(
                  widget.transaction.restaurant.name,
                  style: blackFontStyle3.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              RatingStarts(widget.transaction.restaurant.rate),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    quantity = max(1, quantity - 1);
                  });
                },
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1),
                    image: DecorationImage(
                      image: AssetImage('assets/btn_min.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
                child: Text(
                  quantity.toString(),
                  style: blackFontStyle3.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    quantity = min(99, quantity + 1);
                  });
                },
                child: Container(
                  width: 26,
                  height: 26,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1),
                    image: DecorationImage(
                      image: AssetImage('assets/btn_add.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    }

    Widget restaurantDescription() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 14, 0, 16),
            child: Text(
              widget.transaction.restaurant.description,
              style: greyFontStyle,
            ),
          ),
          Text(
            'Location',
            style: blackFontStyle3.copyWith(fontSize: 16),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
            child: Text(
              widget.transaction.restaurant.location,
              style: greyFontStyle,
            ),
          ),
        ],
      );
    }

    Widget buttonBookNow() {
      return Align(
        alignment: Alignment.center,
        child: Container(
          width: 163,
          height: 45,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: mainColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30))),
            child: Text(
              'Book Now',
              style: blackFontStyle3.copyWith(
                  fontWeight: FontWeight.w500, color: Colors.white),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          bgColors(),
          imageHeader(),
          SafeArea(
            bottom: false,
            child: ListView(
              children: [
                whiteBackButton(),
                Container(
                  margin: EdgeInsets.only(top: 180),
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      titleRatingButtonQty(),
                      restaurantDescription(),
                      buttonBookNow(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
