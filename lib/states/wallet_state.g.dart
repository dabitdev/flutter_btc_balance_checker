// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$WalletState on _WalletState, Store {
  final _$balanceAtom = Atom(name: '_WalletState.balance');

  @override
  int get balance {
    _$balanceAtom.context.enforceReadPolicy(_$balanceAtom);
    _$balanceAtom.reportObserved();
    return super.balance;
  }

  @override
  set balance(int value) {
    _$balanceAtom.context.conditionallyRunInAction(() {
      super.balance = value;
      _$balanceAtom.reportChanged();
    }, _$balanceAtom, name: '${_$balanceAtom.name}_set');
  }

  final _$_WalletStateActionController = ActionController(name: '_WalletState');

  @override
  void setBalance(int newBalance) {
    final _$actionInfo = _$_WalletStateActionController.startAction();
    try {
      return super.setBalance(newBalance);
    } finally {
      _$_WalletStateActionController.endAction(_$actionInfo);
    }
  }
}
