import 'package:flutter/material.dart';
import '../widgets/destination_carousel.dart';
import '../widgets/hotel_carousel.dart';

class TravelScreen extends StatefulWidget {
  TravelScreen({Key? key}) : super(key: key);

  static const routeName = '/travel-screen';

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {

  int _selectedIndex =  0;
  int _currentTab = 0;

  final List<IconData> _icons = [
    Icons.local_grocery_store,
    Icons.person_rounded,
    Icons.favorite,
    Icons.description,
  ];

    Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme.of(context).accentColor : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30)
        ),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: _selectedIndex == index ? Theme.of(context).primaryColor : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          scrollDirection: Axis.vertical,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 100.0),
              child: Text(
                'What you would like \nto find ?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: _icons
                  .asMap()
                  .entries.map(
                    (MapEntry map) => _buildIcon(map.key),)
                  .toList(),
            ),
            const SizedBox(height: 20.0,),
            DestinationCarousel(),
            const SizedBox(height: 20.0,),
            HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (value) {
          setState(() {
            _currentTab = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: Icon(Icons.cloud, size: 30), title: SizedBox.shrink()),
          BottomNavigationBarItem(icon: CircleAvatar(radius: 15, backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEzNzYzNn0?utm_source=dictionnaire&utm_medium=referral'),), title: SizedBox.shrink()),
        ],
      ),
    );
  }
}
