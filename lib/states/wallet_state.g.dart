// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WalletState on _WalletState, Store {
  final _$balanceAtom = Atom(name: '_WalletState.balance');

  @override
  int get balance {
    _$balanceAtom.reportRead();
    return super.balance;
  }

  @override
  set balance(int value) {
    _$balanceAtom.reportWrite(value, super.balance, () {
      super.balance = value;
    });
  }

  final _$_WalletStateActionController = ActionController(name: '_WalletState');

  @override
  void setBalance(int newBalance) {
    final _$actionInfo = _$_WalletStateActionController.startAction(
        name: '_WalletState.setBalance');
    try {
      return super.setBalance(newBalance);
    } finally {
      _$_WalletStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
balance: ${balance}
    ''';
  }
}
