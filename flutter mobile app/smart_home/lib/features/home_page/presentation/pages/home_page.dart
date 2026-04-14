import 'package:flutter/widgets.dart';
import 'package:smart_home/core/resource/main_page/main_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPage(body: Text("Home Page"));
  }
}
