import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProffesionalTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
          opacity: 0.5,
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 70, 200, 100),
            child: Text(
              "Select Profession",
              style: GoogleFonts.exo(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xB3ffffff),
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          const SizedBox(
            height: 130,
          ),
          Container(
            child: FilledButton(
                onPressed: () {},
                child: Text(
                  'Doctor',
                  style: GoogleFonts.exo(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: FilledButton.styleFrom(
                  shadowColor: Colors.black45,
                  backgroundColor: Colors.white,
                  foregroundColor: Color.fromARGB(170, 0, 0, 0),
                  fixedSize: Size(350, 50),
                )),
          ),
          SizedBox(height: 10),
          Container(
            child: FilledButton(
                onPressed: () {},
                child: Text(
                  'Nurse',
                  style: GoogleFonts.exo(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: FilledButton.styleFrom(
                  shadowColor: Colors.black45,
                  backgroundColor: Colors.white,
                  foregroundColor: Color.fromARGB(170, 0, 0, 0),
                  fixedSize: Size(350, 50),
                )),
          ),
        ],
      ),
    );
  }
}
