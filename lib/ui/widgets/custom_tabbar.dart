part of 'widgets.dart';

class CustomTabBar extends StatelessWidget {
  /// selectedIndex digunakan untuk memilih tipe
  final int selectedIndex;

  /// di isi judul atau text yang akan di gunakan
  final List<String> titles;

  /// berfungsi ketika menggunakan ontap memilih judul yang akan di ketuk
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
            children:

                // * Titles
                // ?arti kode di bawah ketika titles di pilih atau ditap tidak sama dengan null maka pilih title e ?

                titles
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

                              // ? arti kode di bawah text (title yang di pilih ) ganti stylnye dengan sesuai yang di pilih, jika true  warna merah selain itu hitam ?

                              child: Text(
                                e,
                                style: (titles.indexOf(e) == selectedIndex)
                                    ? blackFontStyle3.copyWith(
                                        fontSize: 17, color: mainColor)
                                    : blackFontStyle3.copyWith(fontSize: 17),
                              ),
                            ),

                            // * End titles *

                            // * Line *
                            // ? arti kode di bawah jika title yang di pilih maka tampilkan garis warna main color selain itu transparan ?

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

                            // * End Line
                          ],
                        ),
                      ),
                    )
                    .toList(),
          ),
        ],
      ),
    );
  }
}
