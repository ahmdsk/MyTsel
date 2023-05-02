import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> infoKartu = [
    {
      'layanan': 'Internet',
      'jumlah': 12.19,
      'satuan': 'GB',
    },
    {
      'layanan': 'Telepon',
      'jumlah': 0,
      'satuan': 'Min',
    },
    {
      'layanan': 'SMS',
      'jumlah': 23,
      'satuan': 'SMS',
    }
  ];

  List<Map<String, dynamic>> kategoriPaket = [
    {
      'logo': 'images/icons/Icon_Internet.png',
      'nama': 'Internet',
    },
    {
      'logo': 'images/icons/Icon_Telpon.png',
      'nama': 'Telpon',
    },
    {
      'logo': 'images/icons/Icon_SMS.png',
      'nama': 'SMS',
    },
    {
      'logo': 'images/icons/Icon_Roaming.png',
      'nama': 'Roaming',
    },
    {
      'logo': 'images/icons/Icon_Hiburan.png',
      'nama': 'Hiburan',
    },
    {
      'logo': 'images/icons/Icon_Unggulan.png',
      'nama': 'Unggulan',
    },
    {
      'logo': 'images/icons/Icon_Tersimpan.png',
      'nama': 'Tersimpan',
    },
    {
      'logo': 'images/icons/Icon_Riwayat.png',
      'nama': 'Riwayat',
    },
  ];

  List bannerImage = [
    'images/banner/Banner_1.png',
    'images/banner/Banner_2.png'
  ];

  List<Map<String, dynamic>> bannerCovid = [
    {
      'image': 'images/berita_covid/Banner_1.png',
      'text': 'Diskon Spesial 25% Untuk Pelanggan Baru'
    },
    {
      'image': 'images/berita_covid/Banner_2.png',
      'text': 'Bebas Kuota Akses Layanan Kesehatan'
    },
    {
      'image': 'images/berita_covid/Banner_3.png',
      'text': 'Telkomsel #TerusBergerakMaju ...'
    },
    {
      'image': 'images/berita_covid/Banner_4.png',
      'text': '#DiRumahTerusProduktif'
    },
  ];

  List<Map<String, dynamic>> iklanBanner = [
    {
      'image': 'images/banner_linkaja/banner_linkaja_1.png',
      'text': 'Bayar Serba Cepat'
    },
    {
      'image': 'images/banner_linkaja/banner_linkaja_2.png',
      'text': 'Cukup Snap QR'
    },
    {
      'image': 'images/banner_linkaja/banner_linkaja_3.png',
      'text': 'NO! Credit Card'
    },
  ];

  List<Map<String, dynamic>> bannerVoucher = [
    {
      'image': 'images/banner_voucher/banner_voucher_1.png',
      'text': 'Double Benefits from DOUBLE UNTUNG'
    },
    {
      'image': 'images/banner_voucher/banner_voucher_2.png',
      'text': 'Join Undi-Undi Hepi 2020!'
    },
    {
      'image': 'images/banner_voucher/banner_voucher_3.png',
      'text': 'Get Samsung Galaxy S20 Series with Best kartuHalo ...'
    },
    {
      'image': 'images/banner_voucher/banner_voucher_4.png',
      'text': 'Mau Dapetin Konten Favorit? Ke Outlet Pulsa Aja!'
    },
  ];

  List<Map<String, dynamic>> bannerPenawaran = [
    {
      'image': 'images/banner_penawaran/banner_penawaran_1.png',
      'text': 'Terus Belajar dari Rumahmu dengan Ruangguru!'
    },
    {
      'image': 'images/banner_penawaran/banner_penawaran_2.png',
      'text': 'Belajar Kini Makin Mudah dengan Paket ilmupedia!'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFEC2028),
          elevation: 0.0,
          title: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Hai, ',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextSpan(
                text: 'Ahmadd',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ]),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.qr_code_2_sharp,
              ),
              color: Colors.white,
            )
          ],
        ),
        body: Stack(
          children: [
            ClipPath(
              clipper: HeadingClip(),
              child: Container(
                height: 200.0,
                color: const Color(0xFFEC2028),
              ),
            ),
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          ClipPath(
                            clipper: MyCardClip(),
                            child: Container(
                              padding: const EdgeInsets.all(15.0),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 25.0),
                              // height: 200.0,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFFE52D27),
                                  Color(0xFFC1191B),
                                  Color(0xFFB71418),
                                ]),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8.0),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '081290112333',
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Image.asset(
                                        'images/SimPATI_Logo.png',
                                        width: 100.0,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Sisa Pulsa Anda',
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Rp34.000',
                                        style: GoogleFonts.poppins(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFF7B731)),
                                        child: Text(
                                          'Isi Pulsa',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xFF1E272E),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Divider(
                                    color: const Color(0xFF1E272E)
                                        .withOpacity(0.25),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: 'Berlaku sampai ',
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                            ),
                                            children: const [
                                              TextSpan(
                                                  text: '19 April 2020',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w800))
                                            ]),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Telkomsel POIN',
                                            style: GoogleFonts.poppins(
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,
                                              vertical: 2.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFF7B731),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Text(
                                              '172',
                                              style: GoogleFonts.poppins(
                                                color: Colors.black,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                infoKartu.length,
                                (index) {
                                  return Expanded(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0,
                                        vertical: 8.0,
                                      ),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                        boxShadow: [
                                          BoxShadow(
                                              color: const Color(0xFF102535)
                                                  .withOpacity(.08),
                                              blurRadius: 16,
                                              offset: const Offset(0, 2)),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            infoKartu[index]['layanan'],
                                            style: GoogleFonts.poppins(
                                              color: const Color(0xFF1E272E),
                                            ),
                                          ),
                                          RichText(
                                            text: TextSpan(
                                                text: infoKartu[index]['jumlah']
                                                    .toString(),
                                                style: GoogleFonts.poppins(
                                                  color:
                                                      const Color(0xFFEC2028),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        ' ${infoKartu[index]['satuan']}',
                                                    style: GoogleFonts.poppins(
                                                      color: const Color(
                                                          0xFF747D8C),
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ]),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                      Container(
                        height: 8.0,
                        color: Colors.grey[20],
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kategori Paket',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            GridView(
                              shrinkWrap: true,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4,
                                mainAxisSpacing: 20.0,
                                crossAxisSpacing: 10.0,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              children: List.generate(
                                kategoriPaket.length,
                                (index) {
                                  return Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(12.0),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF7B731)
                                              .withOpacity(0.15),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(50.0)),
                                        ),
                                        child: Image.asset(
                                          kategoriPaket[index]['logo'],
                                          width: 35.0,
                                          height: 35.0,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        kategoriPaket[index]['nama'],
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(25.0),
                        color: Colors.white,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Terbaru Dari Telkomsel',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Lihat Semua',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                    color: const Color(0xFFEC2028),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:
                                    List.generate(bannerImage.length, (index) {
                                  return Container(
                                    margin: const EdgeInsets.only(right: 20.0),
                                    child: Image.asset(
                                      bannerImage[index],
                                      width: 350.0,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                }),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanggap COVID-19',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(bannerCovid.length, (index) {
                            return Container(
                              width: 350.0,
                              height: 230.0,
                              margin: const EdgeInsets.only(
                                right: 20.0,
                                bottom: 10.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF102535)
                                        .withOpacity(.08),
                                    blurRadius: 16,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    bannerCovid[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      bannerCovid[index]['text'],
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'AYO! Pake LinkAja!',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Pakai LinkAja untuk beli pulsa, beli paket data dan bayar tagihan lebih mudah.',
                        style: GoogleFonts.poppins(
                            fontSize: 18, color: const Color(0xFF1E272E)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(iklanBanner.length, (index) {
                            return Container(
                              width: 200.0,
                              margin: const EdgeInsets.only(
                                right: 20.0,
                                bottom: 10.0,
                              ),
                              padding: const EdgeInsets.only(bottom: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF102535)
                                        .withOpacity(.08),
                                    blurRadius: 16,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    iklanBanner[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      iklanBanner[index]['text'],
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cari Voucher, Yuk!',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Lihat Semua',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: const Color(0xFFEC2028),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(bannerVoucher.length, (index) {
                            return Container(
                              width: 350.0,
                              height: 235.0,
                              margin: const EdgeInsets.only(
                                right: 20.0,
                                bottom: 10.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF102535)
                                        .withOpacity(.08),
                                    blurRadius: 16,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    bannerVoucher[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      bannerVoucher[index]['text'],
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Penawaran Khusus',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Lihat Semua',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: const Color(0xFFEC2028),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(bannerPenawaran.length, (index) {
                            return Container(
                              width: 350.0,
                              height: 235.0,
                              margin: const EdgeInsets.only(
                                right: 20.0,
                                bottom: 10.0,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xFF102535)
                                        .withOpacity(.08),
                                    blurRadius: 16,
                                    offset: const Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    bannerPenawaran[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      bannerPenawaran[index]['text'],
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFFEC2028),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined),
              label: 'Riwayat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline_rounded),
              label: 'Bantuan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline_rounded),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Akun Saya',
            ),
          ],
        ));
  }
}

class HeadingClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 70);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 70,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class MyCardClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 70, size.height);
    path.lineTo(size.width, size.height - 70);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
