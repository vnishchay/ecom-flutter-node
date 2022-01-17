import 'package:flutter/material.dart';
import 'package:frontend/components/invite_friend.dart';
import 'package:frontend/pages/CategoryPage.dart';
import 'package:frontend/pages/NotitifationsPage.dart';
import 'package:frontend/pages/ProductPage.dart';
import 'package:frontend/pages/account.dart';
import 'package:frontend/pages/favouritesPage.dart';
import 'package:frontend/pages/home.dart';
import 'package:frontend/pages/cartPage.dart';
import 'package:frontend/pages/loginPage.dart';
import 'package:frontend/pages/notfound.dart';
import 'package:frontend/pages/orders.dart';
import 'package:frontend/pages/signUpPage.dart';
import 'package:frontend/pages/splashScreen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/category': (context) => CategoryPage(),
        '/invite': (context) => InviteFriend(),
        '/*': (context) => const NotFountPage(),
        '/orders': (context) => const OrdersPage(),
        '/notfound': (context) => const NotFountPage(),
        '/cart': (context) => CartPage(),
        '/notifications': (context) => NotificationPage(),
        '/signin': (context) => LoginPage(),
        '/register': (context) => SignUpPage(),
        '/favourite': (context) => Favourites(),
      },
    );
  }
}
