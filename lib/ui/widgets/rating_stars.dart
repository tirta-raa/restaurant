part of 'widgets.dart';

class RatingStarts extends StatelessWidget {
  final double rate;

  RatingStarts(this.rate);
  @override
  Widget build(BuildContext context) {
    int numberOfStart = rate.round();
    return Row(
      children: List<Widget>.generate(
            5,
            (index) => Icon(
                (index < numberOfStart) ? MdiIcons.star : MdiIcons.starOutline,
                size: 16,
                color: Colors.yellow),
          ) +
          [
            SizedBox(
              height: 4,
            ),
            Text(
              rate.toString(),
              style: greyFontStyle.copyWith(
                fontSize: 12,
              ),
            )
          ],
    );
  }
}
