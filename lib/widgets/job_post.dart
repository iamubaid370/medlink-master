import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Material(
                  elevation: 6,
                  borderRadius: BorderRadius.circular(20),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Ink.image(
                        image: AssetImage('assets/images/org_profile.png'),
                        fit: BoxFit.cover,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5,
                    top: 10,
                  ),
                  child: Text(
                    'NorthWest Hospital',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    left: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    'Junior surgeon needed.\n'
                    'Salary will be announced\n to the selected candidate,\n'
                    'along with other details.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 100,
                    top: 40,
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Apply',
                      style: GoogleFonts.exo(fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      foregroundColor: Colors.white,
                      shadowColor: Colors.black45,
                      fixedSize: Size(30, 5),
                      elevation: 8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
