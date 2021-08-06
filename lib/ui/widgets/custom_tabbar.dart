part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final List<String> titles;
  final Function(int) onTap;

  CustomTabBar({this.selectedIndex, this.titles, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        height: 50,
        child: Stack(
          children: [
            Row(
                children: titles
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.only(left: defaultMargin),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (onTap != null) {
                                  onTap(titles.indexOf(e));
                                }
                              },
                              child: Text(
                                e,
                                style: (titles.indexOf(e) == selectedIndex)
                                    ? blackFontStyle3.copyWith(
                                        fontSize: 17, color: mainColor)
                                    : blackFontStyle3.copyWith(fontSize: 17),
                              ),
                            ),
                            Container(
                              width: 87,
                              height: 3,
                              margin: EdgeInsets.only(top: 13),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: (titles.indexOf(e) == selectedIndex)
                                    ? mainColor
                                    : Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList()),
          ],
        ));
  }
}
