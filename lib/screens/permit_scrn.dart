import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PermissionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  'We would like to offer you the opportunity to join our network of nurses and be available to provide part-time services to patients in need.\n'
                  'Would you be interested in this opportunity?',
                  style: GoogleFonts.exo(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    backgroundColor: Colors.black45,
                  ),
                ),
              ),
              SizedBox(height: 30),
              FilledButton(
                onPressed: () {},
                child: Text(
                  'Accept',
                  style: GoogleFonts.exo(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.black45,
                  fixedSize: Size(130, 50),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: GoogleFonts.exo(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
