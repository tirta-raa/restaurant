import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurant/models/models.dart';
import 'package:restaurant/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(
        UserModels(
          id: 1,
          name: 'John Doe',
          email: 'abc@gmail.com',
          phoneNumber: '0852-0852-0852',
          address: 'Jalan 123 Bogor Selatan',
          city: 'New York',
          picturePath:
              'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
        ),
      ),
    );
  }
}
