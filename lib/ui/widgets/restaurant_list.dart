part of 'widgets.dart';

class RestaurantListItem extends StatelessWidget {
  final RestaurantModels restaurant;
  final double itemWidht;

  RestaurantListItem({@required this.restaurant, @required this.itemWidht});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 12),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: NetworkImage(restaurant.picturePath),
            ),
          ),
        ),
        SizedBox(
          width: itemWidht - 182,
          // 60 + lebar gambar
          // 12 + margin gambar ke text
          // 110 + jarak gambar ke rating star
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: blackFontStyle3.copyWith(fontSize: 20),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/pin.png')),
                    ),
                  ),
                  Text(restaurant.location),
                ],
              ),
            ],
          ),
        ),
        RatingStarts(restaurant.rate)
      ],
    );
  }
}
