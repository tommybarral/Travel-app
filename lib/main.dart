import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './models/activity_data.dart';
import './models/destination_data.dart';
import './models/hotel_data.dart';
import './screens/travel_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => DestinationData(),
        ),
        ChangeNotifierProvider(
            create: (context) => ActivityData(),
        ),
        ChangeNotifierProvider(
            create: (context) => HotelData(),
        ),
      ],
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFF3EBACE),
          accentColor: const Color(0xFFD8ECF1),
          scaffoldBackgroundColor: const Color(0xFFF3F5F7),
        ),
        home: TravelScreen(),
      ),
    );
  }
}
