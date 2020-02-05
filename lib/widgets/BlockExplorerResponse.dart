class BlockExplorerResponse {
  final String addrStr;
  final double balance;
  final int balanceSat;

  BlockExplorerResponse({this.addrStr, this.balance, this.balanceSat});

  factory BlockExplorerResponse.fromJson(Map<String, dynamic> json) {
    return BlockExplorerResponse(
      addrStr: json['addrStr'],
      balance: json['balance'],
      balanceSat: json['balanceSat']
    );
  }
}
