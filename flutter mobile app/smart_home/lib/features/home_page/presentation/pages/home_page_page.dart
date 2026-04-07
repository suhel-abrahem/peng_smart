import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/config/route/routes_manager.dart';

import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../add_device/data/data_sources/esp_provision_remote_data_source.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      body: Text("Home Page"),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          context.push(RoutesPath.addDevicePage);
        },
      ),
    );
  }
}
