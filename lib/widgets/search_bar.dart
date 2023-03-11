import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 7, bottom: 5, right: 30),
      height: 40,
      width: 320,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: TextStyle(
            fontFamily: GoogleFonts.exo().toString(),
            height: 3,
            color: Theme.of(context).accentColor,
          ),
          suffixIcon: Icon(
            Icons.search,
            color: Theme.of(context).primaryColor,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
        onTap: () {},
      ),
    );
  }
}
