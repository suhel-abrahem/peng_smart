import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smart_home/core/dependencies_injection.dart';
import 'package:smart_home/features/homes/domain/entities/home_entity.dart';

import '../../data/models/create_room_input_model.dart';
import '../bloc/add_room_bloc.dart';


class AddRoomPage extends StatefulWidget {
  final HomeEntity home;

  const AddRoomPage({
    super.key,
    required this.home,
  });

  @override
  State<AddRoomPage> createState() => _AddRoomPageState();
}

class _AddRoomPageState extends State<AddRoomPage> {
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getItInstance<AddRoomBloc>(),
      child: BlocConsumer<AddRoomBloc, AddRoomState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (room) {
              context.pop(true);
            },
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return Scaffold(
            appBar: AppBar(
              title: const Text('Add Room'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Room Name',
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              context.read<AddRoomBloc>().add(
                                    AddRoomEvent.createRoom(
                                      input: CreateRoomInputModel(
                                        name: _nameController.text.trim(),
                                        homeId: widget.home.id,
                                      ),
                                    ),
                                  );
                            },
                      child: Text(isLoading ? 'Loading...' : 'Create Room'),
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