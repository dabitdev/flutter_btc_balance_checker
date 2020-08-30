import 'package:btc_wallet/widgets/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:btc_wallet/widgets/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  MyHomePage(title: 'Coinsquare Networks Wallet'),
        '/wallet': (context) => Wallet(),
      },
    );
  }
}