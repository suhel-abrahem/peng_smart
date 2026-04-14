import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/dependencies_injection.dart';

import '../../data/models/create_home_input_model.dart';
import '../bloc/home_bloc.dart';

class CreateHomePage extends StatefulWidget {
  const CreateHomePage({super.key});

  @override
  State<CreateHomePage> createState() => _CreateHomePageState();
}

class _CreateHomePageState extends State<CreateHomePage> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getItInstance<HomeBloc>(),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.whenOrNull(
            homeCreated: (home) {
              context.go('/');
            },
            error: (message) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return Scaffold(
            appBar: AppBar(title: const Text('Create Home')),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Home Name'),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              context.read<HomeBloc>().add(
                                HomeEvent.createHome(
                                  input: CreateHomeInputModel(
                                    name: _nameController.text.trim(),
                                  ),
                                ),
                              );
                            },
                      child: Text(isLoading ? 'Loading...' : 'Create Home'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
