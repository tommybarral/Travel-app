class Activity {
  final String name;
  final Tour type;
  final String imageUrl;
  List startTime;
  final int rating;
  final double price;

  Activity({
    required this.name,
    required this.type,
    required this.imageUrl,
    required this.startTime,
    required this.rating,
    required this.price,
  });
}

enum Tour {
sightseeing, pricey,
}