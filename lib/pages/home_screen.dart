import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                text: 'Muhammad',
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
                height: 250.0,
                color: const Color(0xFFEC2028),
              ),
            ),
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
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                              const Divider(
                                color: Color(0xFF1E272E),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                      )
                    ],
                  ),
                  Container(
                    height: 8.0,
                    color: Colors.grey[20],
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            )
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
