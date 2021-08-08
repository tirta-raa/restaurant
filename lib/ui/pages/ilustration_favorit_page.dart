part of 'pages.dart';

class IlustrationFavoritPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: 'Hemm Belum Ada Favorit',
        subtitle: 'Ayo kita cari restoran favorit \n untuk kita nikmati',
        picturePath: 'assets/favorit.png',
        buttonTitle1: 'Cari Makanan',
        buttonTap1: () {},
      ),
    );
  }
}
