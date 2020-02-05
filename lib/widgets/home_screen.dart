import 'package:btc_wallet/widgets/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:bitcoin_flutter/bitcoin_flutter.dart';
import 'package:bip39/bip39.dart' as bip39;

var myController = TextEditingController();

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: new EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Please import the BitCoin wallet adding or scanning the secret seed key',
            ),
            Row(
              children: <Widget>[
                Expanded(child: TextField(controller: myController,)),
                SizedBox(
                    width: 70,
                    child: IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: () async {
                          String cameraScanResult = await scanner.scan();
                          print(cameraScanResult);
                          myController.text = cameraScanResult;
                        })),
              ],
            ),
            Container(
                margin: new EdgeInsets.all(25.0),
                child: RaisedButton(
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.pushNamed(context, "/wallet", arguments: BTCWallet(myController.text));
                    },
                    child: Text("Import", style: TextStyle(fontSize: 20.0))))
          ],
        ),
      ),
    );
  }
}