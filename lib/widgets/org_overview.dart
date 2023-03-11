import 'package:flutter/material.dart';

class OrganizationOverview extends StatelessWidget {
  const OrganizationOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
      ),
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
        top: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
      ),
      child: Row(
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
              top: 3,
            ),
            child: Text(
              'NorthWest Hospital',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              left: 60,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Follow',
                style: TextStyle(
                  fontSize: 12,
                ),
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
    );
  }
}
