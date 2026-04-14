import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/dependencies_injection.dart';

import '../bloc/home_bloc.dart';


class HomeGatePage extends StatelessWidget {
  const HomeGatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getItInstance<HomeBloc>()..add(const HomeEvent.getMyHomes()),
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            homesLoaded: (homes) {
              if (homes.isEmpty) {
                context.go('/createHome');
              } else {
                context.go('/');
              }
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        child: const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}