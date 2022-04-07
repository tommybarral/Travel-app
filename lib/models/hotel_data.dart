import 'package:flutter/foundation.dart';
import './hotel.dart';

class HotelData with ChangeNotifier {
  final List<Hotel> _hotels = [
    Hotel(
      name: 'Hotel 0',
      address: '404 great St',
      imageUrl: 'https://media-cdn.tripadvisor.com/media/photo-s/22/45/9e/c4/exterior.jpg',
      price: 175,
    ),
    Hotel(
      name: 'Hotel 1',
      address: '404 great St',
      imageUrl: 'https://www.comparateurdevoyages.com/vacances/wp-content/uploads/2019/01/2726_Carrefour-Agadir-Anezi_Tower_2941_BIS.jpg',
      price: 300,
    ),
    Hotel(
      name: 'Hotel 2',
      address: '404 great St',
      imageUrl: 'https://www.leparisien.fr/resizer/eu2lwcb2geY2_LKHr8D823W_v08=/932x582/arc-anglerfish-eu-central-1-prod-leparisien.s3.amazonaws.com/public/NAM2THG7N37XTEI7RRQZFVYBMI.jpg',
      price: 450,
    ),
  ];

  List<Hotel> get hotels {
    return [..._hotels];
  }
}