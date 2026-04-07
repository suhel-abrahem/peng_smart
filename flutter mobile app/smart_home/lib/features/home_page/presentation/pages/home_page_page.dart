import 'package:flutter/material.dart';

import '../../../../core/dependencies_injection.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../add_device/data/data_sources/esp_provision_remote_data_source.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  Future<void> checkEspStatus() async {
    final esp = getItInstance<EspProvisionRemoteDataSource>();

    final status = await esp.checkStatus();
    print(status.macAddress);
  }

  @override
  Widget build(BuildContext context) {
    checkEspStatus();
    return MainPage(body: Text("Home Page"));
  }
}
