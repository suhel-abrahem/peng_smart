import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';

import '../../../../config/route/routes_manager.dart';
import '../bloc/home_bloc.dart';

class HomeGatePage extends StatelessWidget {
  const HomeGatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getItInstance<HomeBloc>()..add(const HomeEvent.getMyHomes()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            homesLoaded: (homes) {
              if (homes.isEmpty) {
                context.go(RoutesPath.addHomePage);
              } else {
                context.go(RoutesPath.homePage);
              }
            },
            error: (message) {
              showMessage(message: message, context: context);
            },
          );
        },
        child: const Scaffold(body: Center(child: CircularProgressIndicator())),
      ),
    );
  }
}
