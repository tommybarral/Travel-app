import 'package:flutter/foundation.dart';
import './destination.dart';

class DestinationData with ChangeNotifier {

  final List<Destination> _destinations = [
    Destination(
      city: 'Venise',
      country: 'Italy',
      description: 'Visit Venise for an amazing and unforgettable adventure',
      imageUrl: 'https://media.routard.com/image/81/3/venise-grand-canal.1479813.142.jpg',
    ),
    Destination(
      city: 'Tokyo',
      country: 'Japan',
      description: 'Visit tokyo for an amazing and unforgettable adventure',
      imageUrl: 'https://stillmed.olympics.com/media/Images/OlympicOrg/News/2021/03/11/2020-03-11-Session-Tokyo-thumbnail.jpg',
    ),
    Destination(
      city: 'Hong Kong',
      country: 'China',
      description: 'Visit Hong Kong for an amazing and unforgettable adventure',
      imageUrl: 'https://www.atout-france.fr/sites/default/files/market/2020/08/pac_hk_photo_0.jpg',
    ),
    Destination(
      city: 'Seoul',
      country: 'South Korea',
      description: 'Visit Seoul for an amazing and unforgettable adventure',
      imageUrl: 'https://images.trvl-media.com/hotels/19000000/18070000/18060400/18060379/8ceda5e2_z.jpg',
    ),
    Destination(
      city: 'New York',
      country: 'United States',
      description: 'Visit New York for an amazing and unforgettable adventure',
      imageUrl: 'https://a.cdn-hotels.com/gdcs/production101/d154/ee893f00-c31d-11e8-9739-0242ac110006.jpg',
    ),
  ];

  List<Destination> get destinations {
    return [..._destinations];
  }

}