import 'package:flutter/cupertino.dart';
import 'package:test_exercise/constants/app_images.dart';

class CafeCard extends ChangeNotifier {
  String? name;
  String? price;
  String? imageUrl;
  String? location;
  String? cashBack;

  CafeCard(
      {this.name, this.price, this.imageUrl, this.location, this.cashBack});
}

List<CafeCard> data = [
  CafeCard(
      name: 'Айс Латте',
      price: 'Цена: 35 ₴ ',
      imageUrl: AppImages.coffee,
      location: 'Арома Кава',
      cashBack: "10 %"
  ),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
  CafeCard(
      name: 'name',
      price: '12.50',
      imageUrl: 'kartinka',
      location: 'Vinnytsia',
      cashBack: "3%"),
];
