import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/purchase_details_screen.dart';
import 'screens/confirmation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping Cart App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/productList': (context) => ProductListScreen(),
        '/purchaseDetails': (context) => PurchaseDetailsScreen(
              productName: ModalRoute.of(context)!.settings.arguments as String,
            ),
        '/confirmation': (context) => ConfirmationScreen(),
      },
    );
  }
}
