import 'package:flutter/material.dart';
import '../widgets/search_bar.dart';
import '../widgets/prof_icon.dart';
import '../widgets/org_overview.dart';

class OrganizationsScreen extends StatelessWidget {
  const OrganizationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 244, 245, 249),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ProfileIcon(),
          SearchBar(),
        ],
      ),
      body: Column(
        children: <Widget>[
          OrganizationOverview(),
          OrganizationOverview(),
          OrganizationOverview(),
        ],
      ),
    );
  }
}
