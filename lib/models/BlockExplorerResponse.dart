class BlockExplorerResponse {
  final String addrStr;
  final int balance;

  BlockExplorerResponse({this.addrStr, this.balance});

  factory BlockExplorerResponse.fromJson(Map<String, dynamic> json) {
    return BlockExplorerResponse(
      addrStr: json['address'],
      balance: json['balance']
    );
  }
}
