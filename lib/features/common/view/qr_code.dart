import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_barcode_sdk/dynamsoft_barcode.dart';
// import 'package:flutter_barcode_sdk/flutter_barcode_sdk.dart';
// import 'package:hale_farm/features/common/view/scanner_screen_mobile.dart';
// import 'package:hale_farm/features/common/view/scanner_screen_windows.dart';

class QRCodeView extends StatefulWidget {
  const QRCodeView({super.key});

  @override
  State<QRCodeView> createState() => _QRCodeViewState();
}

class _QRCodeViewState extends State<QRCodeView> {
  // late FlutterBarcodeSdk _barcodeReader;
  bool _isSDKLoaded = false;

  @override
  void initState() {
    super.initState();

    initBarcodeSDK();
  }

  Future<void> initBarcodeSDK() async {
    // _barcodeReader = FlutterBarcodeSdk();
    // await _barcodeReader.setLicense(
    //     't0073oQAAAE4JZRyHYVxB9ZHVa33By/AaxhAsI5RyL+ibdhM6seESNuwqy6kxz3NO7KNwTidrGoogOR5QixBoqTCjFWiGDo0CAJMi5w==;t0072oQAAAFGVw/HYveBwddwTxm73Ga6Iv73R1werR7SNZZ4EtXMskQVZA0F0LlSM+PZH4a/VTgIbj9dohTb3FViO15fqpxou6yNp');
    // await _barcodeReader.init();
    // await _barcodeReader.setBarcodeFormats(BarcodeFormat.ALL);
    setState(() {
      _isSDKLoaded = true;
    });
  }

  _showDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            if (_isSDKLoaded == false) {
              _showDialog('Error', 'Barcode SDK is not loaded.');
              return;
            }

            if (Platform.isAndroid || Platform.isIOS) {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => ScannerScreenMobile(
              //             barcodeReader: _barcodeReader,
              //           )),
              // );
            } else if (Platform.isWindows) {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => ScannerScreenWindows(
              //             barcodeReader: _barcodeReader,
              //           )),
              // );
            }
          },
          child: const Text('Barcode Scanner'),
        ),
      ],
    );
  }
}
