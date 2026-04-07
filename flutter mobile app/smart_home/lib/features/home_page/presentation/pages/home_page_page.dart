import 'package:flutter/material.dart';

import '../../../../core/resource/main_page/main_page.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(body: Text("Home Page"));
  }
}
