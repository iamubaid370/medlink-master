import 'package:flutter/material.dart';
import '../widgets/prof_icon.dart';
import '../widgets/search_bar.dart';
import '../widgets/job_post.dart';

class ProHomeScreen extends StatefulWidget {
  const ProHomeScreen({super.key});

  @override
  State<ProHomeScreen> createState() => _ProHomeScreenState();
}

class _ProHomeScreenState extends State<ProHomeScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
    );
  }
}
