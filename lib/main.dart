import 'package:flutter/material.dart';
import 'package:medlink/screens/userprofile_scrn.dart';
import '../screens/nurseReg_scrn.dart';
import '../screens/usertype_scrn.dart';
import '../screens/proftype_scrn.dart';
import '../screens/auth_scrn.dart';
import '../screens/permit_scrn.dart';
import '../screens/docReg_scrn.dart';
import '../screens/home_scrn.dart';
import '../widgets/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../screens/userprofile_scrn.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.exo(
          fontSize: 20,
          fontWeight: FontWeight.normal,
        ).toString(),
        primaryColor: HexColor('#00B53D'),
        accentColor: Colors.black54,
      ),
      home: SelectedPage(),
    );
  }
}
