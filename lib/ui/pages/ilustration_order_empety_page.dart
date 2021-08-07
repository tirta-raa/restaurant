part of 'pages.dart';

class IlustrationOrderEmpetyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IlustrationPage(
        title: 'Hemm Kamu Belum Jajan',
        subtitle: 'Yuk cari restoran paling enak \n di lingkungan kamu',
        picturePath: 'assets/empety.png',
        buttonTitle1: 'Cari restorant',
        buttonTap1: () {},
      ),
    );
  }
}
