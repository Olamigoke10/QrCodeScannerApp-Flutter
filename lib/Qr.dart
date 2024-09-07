import 'package:flutter/material.dart';
import 'package:qr_scanner/generate_qrcode.dart';
import 'package:qr_scanner/scan_qrcode.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
}


class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed:  setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScanQrCode()));
            }),
           child: const Text('Scan Qr Code'),
           ),
           const SizedBox(height: 40),
           ElevatedButton(
            onPressed: setState(() {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GenerateQrCode()))
           }),
            child: Text('Generate Qr Code')),
        ],
      ),
    );
  }
}