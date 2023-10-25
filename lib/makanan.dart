class Makanan {
  String nama;
  String deskripsi;
  String gambarUtama;
  String detail;
  String waktuBuka;
  double harga;
  String kalori;
  List<String> gambarLain;
  List<Map<String, String>> bahan;

  Makanan({
    required this.nama,
    required this.deskripsi,
    required this.gambarUtama,
    required this.detail,
    required this.waktuBuka,
    required this.harga,
    required this.kalori,
    required this.gambarLain,
    required this.bahan,
  });

  static List<Makanan> dummyData = [
    Makanan(
        nama: "Ramen Katsu",
        deskripsi:
            "Perpaduan antara bumbu kare dengan potongan katsu yang bercitarasa",
        gambarUtama: "assets/ramenKatsu.jpeg",
        detail:
            "Ramen Katsu adalah hidangan Jepang yang menggabungkan mie ramen dengan daging katsu goreng, menciptakan kombinasi gurih dan lezat. Ini menghadirkan cita rasa yang unik dengan mie yang kenyal, kuah kental, dan daging katsu yang renyah.",
        waktuBuka: "10.00 - 19.00",
        harga: 26000,
        kalori: "800 kalori",
        gambarLain: [
          'assets/ramenKatsu2.jpeg',
          'assets/ramenKatsu3.jpeg',
          'assets/ramenKatsu4.jpeg',
        ],
        bahan: [
          {"Daging": 'assets/bahan/daging.jpeg'},
          {"Mie": 'assets/bahan/mie.jpeg'},
          {"Bawang": 'assets/bahan/bawang.jpeg'},
          {"Kare": 'assets/bahan/kare.jpeg'},
          {"Santan": 'assets/bahan/santan.jpeg'},
        ]),
    Makanan(
        nama: "Nasi Goreng Kwetiau",
        deskripsi:
            "Nasi goreng dengan bumbu yang pas, dengan ditambabah topping kwetiau yang menciptakan kesan ciamik pada makanan",
        gambarUtama: "assets/nasiGorengKwetiau.jpeg",
        detail:
            "Nasi goreng kwetiau adalah paduan memikat antara nasi dan mi kwetiau, menggabungkan bumbu pedas, manis, dan gurih yang meresap dalam hidangan lezat ini. Daging, udang, telur, dan sayuran melengkapi hidangan dengan rasa yang kaya dan tekstur yang beragam.",
        waktuBuka: "7.00 - 23.00",
        harga: 23000,
        kalori: "600 kalori",
        gambarLain: [
          'assets/nasiGorengKwetiau2.jpeg',
          'assets/nasiGorengKwetiau3.jpeg',
          'assets/nasiGorengKwetiau4.jpeg',
        ],
        bahan: [
          {"Nasi": 'assets/bahan/nasi.jpeg'},
          {"Kwetiau": 'assets/bahan/kwetiau.jpeg'},
          {"Daging": 'assets/bahan/daging.jpeg'},
          {"Telur": 'assets/bahan/telur.jpeg'},
          {"Bakso": 'assets/bahan/bakso.jpeg'},
        ]),
    Makanan(
        nama: "Martabak",
        deskripsi:
            "Perpaduan olahan pilihan dalam hidangan yang pas martabak manis dan martabak daging menemani hari anda",
        gambarUtama: "assets/martabak.jpeg",
        detail:
            "Martabak asin adalah hidangan gurih dengan adonan tipis yang diisi dengan campuran telur, daging, dan bumbu gurih. Sementara itu, martabak manis adalah varian yang lebih manis, dengan adonan tebal yang diisi dengan gula, susu, keju, dan cokelat.",
        waktuBuka: "17.00 - 00.00",
        harga: 34000,
        kalori: "1.200 kalori",
        gambarLain: [
          'assets/martabak2.jpeg',
          'assets/martabak3.jpeg',
          'assets/martabak4.jpeg',
        ],
        bahan: [
          {"Daging": 'assets/bahan/daging.jpeg'},
          {"telur": 'assets/bahan/telur.jpeg'},
          {"Bawang": 'assets/bahan/bawang.jpeg'},
          {"susu": 'assets/bahan/susu.jpeg'},
          {"keju": 'assets/bahan/keju.jpeg'},
        ])
  ];
}
