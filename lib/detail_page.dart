import 'package:flutter/material.dart';
import 'package:flutter_application_1/makanan.dart';
import 'package:flutter_application_1/pemesanan.dart';
import 'package:flutter_application_1/style.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  final Makanan makanan;

  DetailPage({Key? key, required this.makanan}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int itemCount = 1;
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff9EDDFF),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.asset(
                    widget.makanan.gambarUtama,
                    scale: 0.5,
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonBack(),
                        ButtonLike(),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                color: headBgColor,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  widget.makanan.nama,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  attributesIcon(
                      Icons.access_time_filled, widget.makanan.waktuBuka),
                  attributesIcon(Icons.local_fire_department_rounded,
                      widget.makanan.kalori),
                  attributesIcon(Icons.monetization_on,
                      'Rp. ${widget.makanan.harga.toStringAsFixed(0)}'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  widget.makanan.detail,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              listGambarLain(),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Bahan-bahan",
                  style: headerH1,
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: widget.makanan.bahan.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Image.asset(widget.makanan.bahan[index].values.first,
                              width: 52),
                          Text(widget.makanan.bahan[index].keys.first),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(
                    16), // Sesuaikan dengan margin yang Anda inginkan
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (itemCount > 1) {
                          setState(() {
                            itemCount--;
                          });
                        }
                      },
                      child: Icon(Icons.remove, size: 24),
                    ),
                    Text(
                      '$itemCount',
                      style: TextStyle(fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          itemCount++;
                        });
                      },
                      child: Icon(Icons.add, size: 24),
                    ),
                    Text(
                      'Rp. ${NumberFormat.currency(locale: 'id', symbol: '').format(widget.makanan.harga * itemCount)}',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PemesananPage(
                              itemName: widget.makanan.nama,
                              itemCount: itemCount,
                              totalBill: widget.makanan.harga * itemCount,
                            ),
                          ),
                        );
                      },
                      child: Text('Pesan', style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  SizedBox listGambarLain() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        itemCount: widget.makanan.gambarLain.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(widget.makanan.gambarLain[index]),
            ),
          );
        },
      ),
    );
  }

  Column attributesIcon(IconData icon, String teks) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 24),
        Text(
          teks,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget ButtonBack() {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget ButtonLike() {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      child: IconButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        icon: Icon(
          isSelected ? Icons.favorite : Icons.favorite_outline,
          color: const Color.fromARGB(255, 205, 1, 1),
          size: 32,
        ),
      ),
    );
  }
}
