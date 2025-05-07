import 'package:flutter/material.dart';

class ContentCenterPage extends StatefulWidget {
  const ContentCenterPage({super.key});

  @override
  State<ContentCenterPage> createState() => _ContentCenterPageState();
}

class _ContentCenterPageState extends State<ContentCenterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("content"),
    );
  }
}
