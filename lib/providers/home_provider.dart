
import 'package:test_exercise/constants/app_images.dart';
import 'package:test_exercise/models/cofe_card.dart';
import 'package:test_exercise/core/base_provider.dart';

class HomeProvider extends BaseProvider {

  final categoryList = <String, String>{
    "Маркетплейсы ": AppImages.marketplace,
    "Одежда и украшения": AppImages.clothes,
    "Красота и здоровье ": AppImages.travel,
    "Путешествия": AppImages.beauty,
    "Услуги": AppImages.travel,
    "Виллы": AppImages.travel,
    "Жилье на месяц": AppImages.travel,
    "Прокат автомобилей": AppImages.travel,
    "Поиск авиабилетов": AppImages.travel,
  };

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
}
