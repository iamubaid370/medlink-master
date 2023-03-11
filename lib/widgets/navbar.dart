import 'package:flutter/material.dart';
import '../screens/home_scrn.dart';
import '../screens/org_scrn.dart';

class SelectedPage extends StatefulWidget {
  const SelectedPage({super.key});

  @override
  State<SelectedPage> createState() => _SelectedPageState();
}

class _SelectedPageState extends State<SelectedPage> {
  int _selectdpageindex = 0;
  final List _screens = [
    {"screen": ProHomeScreen()},
    {"screen": OrganizationsScreen()}
  ];

  void selectedscrn(index) {
    setState(() {
      _selectdpageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectdpageindex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        selectedLabelStyle: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 16,
        ),
        currentIndex: _selectdpageindex,
        onTap: selectedscrn,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/unselected_home.png',
              width: 25,
              height: 25,
            ),
            label: 'Home',
            activeIcon: Image.asset(
              'assets/images/selected_home.png',
              width: 30,
              height: 30,
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/org_unselected.png',
              width: 25,
              height: 25,
            ),
            label: 'Oragnization',
            activeIcon: Image.asset(
              'assets/images/org_selected.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
    );
  }
}
