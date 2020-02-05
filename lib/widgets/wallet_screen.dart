import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:btc_wallet/widgets/BlockExplorerResponse.dart';
import 'dart:convert';

class BTCWallet {
  final String address;
  BTCWallet(this.address);
}

class Wallet extends StatelessWidget {
  const Wallet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final BTCWallet args = ModalRoute.of(context).settings.arguments;

    fetchAddress(args.address).then((wallet) {
      print(wallet.addrStr);
      print(wallet.balance);
      print(wallet.balanceSat);
    });

    return Container(
      child: Scaffold(
        body:SafeArea(
          child: Column(
            children: <Widget>[
              Text(args.address)
            ],
          ),
        ),
      ),
    );
  }
}

Future<BlockExplorerResponse> fetchAddress(String publicAddress) async {
  final response =
      await http.get('https://blockexplorer.com/api/addr/' + publicAddress);

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON.
    return BlockExplorerResponse.fromJson(json.decode(response.body));
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load BlockExplorerResponse');
  }
}
