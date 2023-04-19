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
                margin: const EdgeInsets.only(top: 20.0),
                height: 250.0,
                child: ListView(
                  children: const [
                    Text('Test')
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.amber,
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
