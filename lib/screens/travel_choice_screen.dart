import 'package:flutter/material.dart';

class TravelChoiceScreen extends StatelessWidget {
  const TravelChoiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 310,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              image: DecorationImage(
                image: NetworkImage('https://dearsam.com/img/600/744/resize/p/a/panoramic-landscape-70x50.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: const [
                Icon(Icons.arrow_back, color: Colors.white,),
                Spacer(),
                Icon(Icons.search, color: Colors.white,),
                Icon(Icons.more_vert, color: Colors.white,),
              ],
            ),
          ),
          Container(
            height: 370,
            width: double.infinity,
            color: Colors.white60,
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Container(
                  height: 135,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 125,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: NetworkImage('https://dearsam.com/img/600/744/resize/p/a/panoramic-landscape-70x50.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Text('St marks \nbasilica'),
                              Text('30'),
                            ],
                          ),
                          Text(''),
                          Text('place'),
                          Text('number stars'),
                          Row(
                            children: [
                              Text('9:00pm'),
                              Text('11:00pm'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
