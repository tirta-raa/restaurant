part of 'models.dart';

class RestaurantModels {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String location;
  final double rate;

  RestaurantModels(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.location,
      this.rate});

  List<RestaurantModels> mockRestaurant = [
    RestaurantModels(
      id: 1,
      picturePath: 'https://pngimg.com/uploads/kfc/kfc_PNG24.png',
      name: 'KFC',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Bogor',
      rate: 4.4,
    ),
    RestaurantModels(
      id: 2,
      picturePath:
          'https://seeklogo.com/images/C/cfc-logo-79608E5914-seeklogo.com.png',
      name: 'CFC',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Bandung',
      rate: 3.4,
    ),
    RestaurantModels(
      id: 3,
      picturePath:
          'https://seeklogo.com/images/T/texas-fried-chicken-logo-E84F9401A8-seeklogo.com.png',
      name: 'Texas Fried Chiken',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Jakarta',
      rate: 1.9,
    ),
    RestaurantModels(
      id: 4,
      picturePath:
          'https://seeklogo.com/images/B/burger-king-new-2021-logo-F43BDE45C7-seeklogo.com.png',
      name: 'Burger King',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Bogor',
      rate: 5,
    ),
    RestaurantModels(
      id: 5,
      picturePath:
          'https://seeklogo.com/images/M/mcdonald-s-logo-0D95A820B2-seeklogo.com.png',
      name: 'Mc Donals',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Sumedang',
      rate: 4.4,
    ),
    RestaurantModels(
      id: 6,
      picturePath:
          'https://seeklogo.com/images/S/Starbucks_Coffee-logo-DECE0A6E4B-seeklogo.com.png',
      name: 'Star Bucks',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Sukabumi',
      rate: 5,
    ),
    RestaurantModels(
      id: 7,
      picturePath:
          'https://seeklogo.com/images/D/dominos-pizza-logo-3C4574E20F-seeklogo.com.png',
      name: 'Dominos Pizza',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Balik Papan',
      rate: 2.2,
    ),
    RestaurantModels(
      id: 8,
      picturePath:
          'https://seeklogo.com/images/P/Pizza_Hut-logo-FDF59C73F0-seeklogo.com.png',
      name: 'Pizza Hut',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Jogja',
      rate: 3.9,
    ),
    RestaurantModels(
      id: 9,
      picturePath:
          'https://seeklogo.com/images/D/Dunkin_donuts-logo-6828720377-seeklogo.com.png',
      name: 'Dunkin Donnat',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse hendrerit quam non venenatis ornare. Integer aliquet mi vitae eleifend porttitor. Sed viverra, enim ac pretium tempus, quam enim euismod nunc, non sodales lorem ipsum nec nulla. Donec ut dapibus metus. Maecenas purus leo, laoreet eget placerat sit amet, sodales a arcu.',
      location: 'Banten',
      rate: 4.9,
    ),
  ];
}
