import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class PemesananPage extends StatelessWidget {
  final String itemName;
  final int itemCount;
  final double totalBill;

  PemesananPage({
    required this.itemName,
    required this.itemCount,
    required this.totalBill,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kulineran'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PESANAN \n $itemName \n BERHASIL \n',
              style: headerH1,
              textAlign: TextAlign.center, // Tambahkan ini untuk rata tengah
            ),
            Text(
              '\nJumlah Pesanan: \n $itemCount\n',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center, // Tambahkan ini untuk rata tengah
            ),
            Text(
              '\nTotal yang Harus Dibayar: \n \Rp.  ${totalBill.toStringAsFixed(0)}\n \n',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center, // Tambahkan ini untuk rata tengah
            ),
            ElevatedButton(
              onPressed: () {
                // Kembali ke halaman sebelumnya (DetailPage)
                Navigator.pop(context);
              },
              child: Text('Kembali ke Halaman Detail'),
            ),
          ],
        ),
      ),
    );
  }
}
