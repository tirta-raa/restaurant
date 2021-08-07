part of 'widgets.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantModels restaurant;

  RestaurantCard(this.restaurant);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            spreadRadius: 3,
            blurRadius: 15,
            color: Colors.black12,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              image: DecorationImage(
                image: NetworkImage(restaurant.picturePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(12, 12, 12, 6),
            width: 200,
            child: Text(
              restaurant.name,
              style: blackFontStyle3.copyWith(fontSize: 20),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 12, left: 12),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/pin.png')),
                  ),
                ),
                Text(restaurant.location),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: RatingStarts(restaurant.rate),
          ),
        ],
      ),
    );
  }
}
