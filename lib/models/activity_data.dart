import 'package:flutter/foundation.dart';
import 'activity.dart';

class ActivityData with ChangeNotifier{

  final List<Activity> _activities = [
    Activity(
      name: 'St. Mark\'s Basilica',
      type: Tour.sightseeing,
      imageUrl: 'image here',
      startTime: ['9:00 am', '11:00 am'],
      rating: 5,
      price: 30.0,
    ),
    Activity(
      name: 'Walking Tour and Gonadola Ride',
      type: Tour.sightseeing,
      imageUrl: 'image here',
      startTime: ['11:00 pm', '1:00 pm'],
      rating: 4,
      price: 210.0,
    ),
    Activity(
      name: 'Murano and Burano Tour',
      type: Tour.sightseeing,
      imageUrl: 'image here',
      startTime: ['12:30 pm', '2:00 pm'],
      rating: 3,
      price: 125.0,
    ),
  ];

  List<Activity> get activities {
    return [..._activities];
  }
}