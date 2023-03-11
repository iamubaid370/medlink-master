import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum InternStatus { Yes, No }

class NurseRegistrationScreen extends StatefulWidget {
  @override
  State<NurseRegistrationScreen> createState() =>
      _NurseRegistrationScreenState();
}

class _NurseRegistrationScreenState extends State<NurseRegistrationScreen> {
  bool _regFieldvisible = true;
  InternStatus? _internstatus;

  void handleSelection(InternStatus? value) {
    setState(() {
      _internstatus = value;
      _regFieldvisible = value == InternStatus.No;
    });
  }

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
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      top: 15,
                      left: 10,
                    ),
                    child: Text(
                      'Complete Your Profile',
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      left: 11,
                    ),
                    child: Text(
                      'Name',
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      left: 11,
                    ),
                    child: Text(
                      'Institute',
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      left: 11,
                    ),
                    child: Text(
                      'Qualification',
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 5,
                      left: 11,
                    ),
                    child: Text(
                      'Internee',
                      style: GoogleFonts.exo(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: ListTile(
                          title: Text('Yes',
                              style: GoogleFonts.exo(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                          leading: Radio(
                            activeColor: Theme.of(context).primaryColor,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Theme.of(context).primaryColor),
                            value: InternStatus.Yes,
                            groupValue: _internstatus,
                            onChanged: handleSelection,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text('No',
                              style: GoogleFonts.exo(
                                color: Colors.white,
                                fontSize: 18,
                              )),
                          leading: Radio(
                            activeColor: Theme.of(context).primaryColor,
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => Theme.of(context).primaryColor),
                            value: InternStatus.No,
                            groupValue: _internstatus,
                            onChanged: handleSelection,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  if (_regFieldvisible)
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 5,
                        left: 11,
                      ),
                      child: Text(
                        'PNC Registration',
                        style: GoogleFonts.exo(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  SizedBox(height: 10),
                  if (_regFieldvisible)
                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  SizedBox(height: 50),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: FilledButton(
                      onPressed: () {},
                      child: Text(
                        'Next',
                        style: GoogleFonts.exo(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: FilledButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        foregroundColor: Colors.white,
                        shadowColor: Colors.black45,
                        fixedSize: Size(150, 50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
