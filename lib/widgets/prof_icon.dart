import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 4,
        right: 15,
        bottom: 4,
      ),
      child: Material(
        elevation: 6,
        borderRadius: BorderRadius.circular(17),
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
              borderRadius: BorderRadius.circular(17),
            ),
            child: Ink.image(
              image: AssetImage('assets/images/profile.png'),
              fit: BoxFit.cover,
              height: 45,
              width: 45,
            ),
          ),
        ),
      ),
    );
  }
}
