import 'package:btc_wallet/widgets/wallet_balance.dart';
import 'package:flutter/material.dart';
import 'package:btc_wallet/states/wallet_state.dart';
import 'package:provider/provider.dart';

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

    return Provider<WalletState>(
      create: (_) => WalletState(),
      child: Container(
        child: Scaffold(
          body:SafeArea(
            child: WalletBalance(address : args.address)
            ),
          ),
        ),
    );
  }
}
