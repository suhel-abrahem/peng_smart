// import 'package:flutter/material.dart';

// import '../../../../core/resources/bottom_navigation_bar/bottom_navigation_bar.dart';
// import '../../../home_page/presentation/pages/home_page_page.dart';
// import '../../../setting/presentation/pages/setting_page.dart';

// class InitPage extends StatefulWidget {
//   const InitPage({super.key});

//   @override
//   State<InitPage> createState() => _InitPageState();
// }

// class _InitPageState extends State<InitPage> {
//   int currentPage = 0;
//   PageController _pageController =
//       PageController(keepPage: true, initialPage: 3);
//   List<Widget> pages = [
//     HomePagePage(),
//     HomePagePage(),
//     HomePagePage(),
//     SettingPage(),
//     HomePagePage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: CustomBottomNavigationBar(
//         onChanged: (value) => setState(() {
//           currentPage = value;
//         }),
//         initPage: currentPage,
//       ),
//       body: PageView(
//         controller: _pageController,
//         scrollDirection: Axis.horizontal,
//         children: pages,
//         onPageChanged: (value) => setState(() {
//           currentPage = value;
//         }),
//       ),
//     );
//   }
// }
