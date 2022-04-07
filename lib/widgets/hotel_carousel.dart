import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/models/hotel_data.dart';


class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final loadedHotels = Provider.of<HotelData>(context).hotels;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Exclusive Hotels', style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, letterSpacing: 1.5),),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'See all',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: loadedHotels.length,
            itemBuilder: (context, index) {
              // HotelData hotelData = hotels[index] SIMPLE WAY.
              return Container(
                width: 240,
                margin: const EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      bottom: 15,
                      child: Container(
                        height: 120,
                        width: 240,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(loadedHotels[index].name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 1.2),),
                              const SizedBox(height: 2.0,),
                              Text(loadedHotels[index].address, style: const TextStyle(color: Colors.grey),),
                              const SizedBox(height: 2.0,),
                              Text('\$${loadedHotels[index].price} / night', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.black26, offset: Offset(0.0, 2.0), blurRadius: 6.0),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          height: 180,
                          width: 220,
                          image: NetworkImage(loadedHotels[index].imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
