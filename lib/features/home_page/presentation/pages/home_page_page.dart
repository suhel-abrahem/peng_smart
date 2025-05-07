import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:peng_smart/features/home_page/domain/entities/room_entity.dart';
import '../../../../core/enums/assets_type_enum.dart';
import '../../../../core/enums/psition_enum.dart';
import '../../../../core/injection_container.dart';
import '../../../../core/resources/assets_manager.dart';
import '../../../../core/resources/common_features/warehouse/bloc/services_categories_bloc.dart';
import '../../../../core/resources/common_widget/actions_buttons/try_agin_button.dart';
import '../../../../core/resources/common_widget/category_container.dart';
import '../../../../core/resources/common_widget/dropdown/dropdown.dart';
import '../../../../core/util/helper.dart';
import '../../../../features/home_page/presentation/pages/main_app_bar_clip.dart';
import '../../../../features/home_page/presentation/widgets/app_bar_button.dart';

import '../../../../config/routes/routes_manager.dart';
import '../../../../core/resources/common_features/warehouse/domain/entities/items_entities.dart';
import '../../../../core/resources/common_page/main_costume_page.dart';
import '../../../../core/resources/common_widget/actions_buttons/add_button.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../../generated/locale_keys.g.dart';

part '../../../../core/resources/common_page/drawer_button.dart';

class HomePagePage extends StatefulWidget {
  const HomePagePage({super.key});

  @override
  State<HomePagePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePagePage> {
  GoRouteInformationParser routeStack = appRouter.routeInformationParser;
  int bypass = 0;
  List<RoomEntity> rooms = [
    RoomEntity(
        id: "1",
        name: "Living Room",
        description: "A room for relaxing and socializing.",
        icon: Icons.living_outlined),
    RoomEntity(
        id: "2",
        name: "Bedroom",
        description: "A room for sleeping and resting.",
        icon: Icons.bed),
    RoomEntity(
        id: "3",
        name: "Kitchen",
        description: "A room for cooking and dining.",
        icon: Icons.kitchen),
    RoomEntity(
        id: "3",
        name: "Add",
        description: "A room for cooking and dining.",
        icon: Icons.add_home_rounded),
  ];
  @override
  Widget build(BuildContext context) {
    // print(routeStack.configuration.routes.first);

    return MainCostumePage(
        bottomBarIndex: 2,
        body: ListView(
          children: [
            Text(LocaleKeys.homePage_hi.tr(namedArgs: {"userName": "Ibrahim"}),
                style: Theme.of(context).textTheme.headlineLarge),
            GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              itemCount: rooms.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 20.w,
                mainAxisSpacing: 40.h,
                mainAxisExtent: 200.h,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  child: AppBarButton(
                      title: rooms[index].name ?? '',
                      icon: rooms[index].icon ?? Icons.error_outline),
                );
              },
            )
          ],
        ));
  }
}
