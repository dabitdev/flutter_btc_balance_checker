import 'package:mobx/mobx.dart';

// Include generated file
part 'wallet_state.g.dart';

// This is the class used by rest of your codebase
class WalletState = _WalletState with _$WalletState;

// The store-class
abstract class _WalletState with Store {
  @observable
  double balance = 0;

  @action
  void setBalance(double newBalance) {
    balance = newBalance;
  }
}