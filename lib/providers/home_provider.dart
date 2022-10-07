import 'package:test_exercise/constants/app_colors.dart';
import 'package:test_exercise/models/catalog.dart';
import 'package:test_exercise/models/cofe_card.dart';
import 'package:test_exercise/core/base_provider.dart';

class HomeProvider extends BaseProvider {
  List<Catalog> i = [
    Catalog(
      name: 'Маркетплейсы',
      image: 'assets/marketplace.png',
      color: AppColors.beauty,
    ),
    Catalog(
      name: 'Одежда и украшения',
      image: 'assets/clothes.png' ,
      color: AppColors.travel,
    ),
    Catalog(
      name: 'Красота и здоровье ',
      image: "assets/beauty.png",
      color: AppColors.services,
    ),
    Catalog(
      name: 'Путешествия',
      image:"assets/travel.png",
      color: AppColors.marketplace,
    ),
    Catalog(
      name: 'Услуги',
      image: "assets/travel.png",
      color: AppColors.services,
    ),
    Catalog(
      name: 'Виллы',
      image: 'assets/marketplace.png',
      color: AppColors.marketplace,
    ),
    Catalog(
      name: 'Жилье на месяц',
      image: "assets/travel.png",
      color: AppColors.beauty,
    ),
    Catalog(
      name: 'Прокат автомобилей',
      image: "assets/beauty.png",
      color: AppColors.services,
    ),
    Catalog(
      name: 'Поиск авиабилетов',
      image: 'assets/marketplace.png',
      color: AppColors.travel,
    ),
  ];

  List<CafeCard> data = [
    CafeCard(
      name: 'Айс Латте',
      price: 'Цена: 35 ₴ ',
      imageUrl:
          'https://img.tsn.ua/cached/443/tsn-1358a5fc43e0be7be1f42d9d95137a9f/thumbs/1200x630/dc/c8/a6bb819a7ef909c1c474f7e46f66c8dc.jpeg',
      location: 'Арома Кава',
      cashBack: "кэшбэк",
      interest: "4 %",
      color: AppColors.beauty,
    ),
    CafeCard(
      name: 'Часы',
      price: 'Цена: 45.50 ₴ ',
      imageUrl:
          'https://eimg.pravda.com/images/doc/3/3/335992b-large-2x.jpg.apple-watch-se-8up-hero-220907-big.jpg',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "7 %",
      color: AppColors.marketplace,
    ),
    CafeCard(
      name: 'Дом',
      price: 'Цена: 1000.45 ₴',
      imageUrl:
          'https://cdn.riastatic.com/photosnewr/ria/news_common/kupit-ili-postroit-dom-chto-vygodnee__173345-620x0.jpg',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "9 %",
      color: AppColors.clothes,
    ),
    CafeCard(
      name: 'Яблока',
      price: 'Цена: 5.50 ₴ ',
      imageUrl:
          'https://produkt-pitaniya.info/wp-content/uploads/2022/04/frukty-yabloki-1024x511.jpg',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "5 %",
      color: AppColors.services,
    ),
    CafeCard(
      name: 'Mашину',
      price: 'Цена: 500.35 ₴ ',
      imageUrl:
          'https://3dnews.ru/assets/external/illustrations/2016/11/11/942599/0.jpg',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "17 %",
      color: AppColors.travel,
    ),
    CafeCard(
      name: 'Квартиру',
      price: 'Цена: 200.10 ₴ ',
      imageUrl:
          'https://ireland.apollo.olxcdn.com/v1/files/vpt4uyuodqdq3-UA/image;s=644x461',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "20 %",
      color: AppColors.clothes,
    ),
    CafeCard(
      name: 'Телефон',
      price: 'Цена: 100.20 ₴ ',
      imageUrl:
          'https://business-swiss.ch/wp-content/uploads/2017/12/zamedlenie-raboty-stary-h-modelej-iphone.jpg',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "2 %",
      color: AppColors.beauty,
    ),
    CafeCard(
      name: 'Игру',
      price: 'Цена: 55.55 ₴ ',
      imageUrl:
          'https://m.minecrafts.ru/images/gallery/12-03-2018/Key-Art-2-big.png',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "14 %",
      color: AppColors.marketplace,
    ),
    CafeCard(
        name: 'Клавиатура',
        price: 'Цена: 80.00 ₴ ',
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNQ8kC1XbFuVjl2zmHrTsPpK8SsQ5Vjrt0tA&usqp=CAU',
        location: 'Vinnytsia',
        cashBack: "кэшбэк",
        interest: "3 %",
        color: AppColors.travel),
    CafeCard(
      name: 'Legitech',
      price: 'Цена: 45.50 ₴ ',
      imageUrl:
          'https://kasta.ua/image/1035/uploads/product_image/2022/02/143/2bca025c6574e1152ff4305c12cc7206.jpeg',
      location: 'Vinnytsia',
      cashBack: "кэшбэк",
      interest: "5 %",
      color: AppColors.services,
    ),
  ];
}
