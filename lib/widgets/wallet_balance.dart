import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:btc_wallet/states/wallet_state.dart';
import 'package:btc_wallet/models/BlockExplorerResponse.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WalletBalance extends StatelessWidget {
  final String address;
  const WalletBalance({Key key, @required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<WalletState>(context);
    fetchAddress(address).then((response) {
     state.setBalance(response.balance);
    });
    
    return Column(
        children: <Widget>[
          Observer (
            builder:(_) =>
              Text(state.balance.toString())
          ),
        ],
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