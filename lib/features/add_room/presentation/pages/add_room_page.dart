import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:peng_smart/core/enums/rooms_type_enum.dart';
import 'package:peng_smart/core/injection_container.dart';
import 'package:peng_smart/core/resources/common_page/main_costume_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peng_smart/core/resources/common_widget/input_field/input_field_widget.dart';
import 'package:peng_smart/features/home_page/domain/entities/room_entity.dart';

import '../../../home_page/presentation/bloc/rooms_bloc.dart';

class AddRoomPage extends StatefulWidget {
  final ValueChanged<RoomsState>? onRoomAdded;
  const AddRoomPage({super.key, this.onRoomAdded});

  @override
  State<AddRoomPage> createState() => _AddRoomPageState();
}

class _AddRoomPageState extends State<AddRoomPage> {
  RoomsTypeEnum selectedRoomType = RoomsTypeEnum.kitchen;
  String? roomName = "";
  List<RoomEntity> roomsList = [
    RoomEntity(
      name: "Kitchen",
      type: RoomsTypeEnum.kitchen,
      icon: Icons.kitchen_outlined,
    ),
    RoomEntity(
      name: "Living Room",
      type: RoomsTypeEnum.livingRoom,
      icon: Icons.living_outlined,
    ),
    RoomEntity(
      name: "Bedroom",
      type: RoomsTypeEnum.bedroom,
      icon: Icons.bed_outlined,
    ),
    RoomEntity(
      name: "Bathroom",
      type: RoomsTypeEnum.bathroom,
      icon: Icons.bathtub_outlined,
    ),
    RoomEntity(
      name: "Dining Room",
      type: RoomsTypeEnum.diningRoom,
      icon: Icons.dining_outlined,
    ),
    RoomEntity(
      name: "Office",
      type: RoomsTypeEnum.office,
      icon: Icons.work_outline,
    ),
    RoomEntity(
      name: "Garage",
      type: RoomsTypeEnum.garage,
      icon: Icons.garage_outlined,
    ),
    RoomEntity(
      name: "Laundry Room",
      type: RoomsTypeEnum.laundryRoom,
      icon: Icons.local_laundry_service_outlined,
    ),
    RoomEntity(
      name: "Basement",
      type: RoomsTypeEnum.basement,
      icon: Icons.storage_outlined,
    ),
    RoomEntity(
      name: "Attic",
      type: RoomsTypeEnum.attic,
      icon: Icons.house_outlined,
    ),
    // RoomEntity(
    //   name: "Hallway",
    //   type: RoomsTypeEnum.hallway,
    //   icon: Icons.h,
    // ),
    RoomEntity(
      name: "Storage Room",
      type: RoomsTypeEnum.storageRoom,
      icon: Icons.storage_outlined,
    ),
    RoomEntity(
      name: "Tunnel",
      type: RoomsTypeEnum.tunel,
      icon: Icons.streetview_outlined,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider<RoomsBloc>(
      create: (context) =>
          getItInstance<RoomsBloc>()..add(RoomsEvent.started()),
      child: BlocBuilder<RoomsBloc, RoomsState>(
        builder: (context, state) {
          return Container(
            width: double.maxFinite,
            height: 600.h,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadiusDirectional.vertical(
                    top: Radius.circular(30.r))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10.r)),
                ),
                Text(
                  "Add a new room to your home.",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                CustomInputField(
                  width: 250.w,
                  haveOuterLabel: true,
                  outerLabel: "Room Name",
                  isRequired: true,
                  validator: (p0) {
                    if (p0 == null || p0.trim().isEmpty) {
                      return "Please enter a room name";
                    }
                  },
                  onChanged: (value) {
                    if (value != null || value.trim().isNotEmpty) {
                      roomName = value;
                    }
                  },
                ),
                Text("Room Type:",
                    style: Theme.of(context).textTheme.headlineSmall),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 60.h,
                    child: ListView.builder(
                      controller: ScrollController(keepScrollOffset: true),
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: roomsList.length,
                      itemBuilder: (context, index) => Padding(
                        key: ValueKey(selectedRoomType),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15.w, vertical: 0),
                        child: SizedBox(
                          width: 180.w,
                          child: ElevatedButton.icon(
                            label: Text(roomsList[index].name ?? ""),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  selectedRoomType == roomsList[index].type
                                      ? Theme.of(context).colorScheme.primary
                                      : Theme.of(context).colorScheme.onSurface,
                            ),
                            onPressed: () {
                              setState(() {
                                selectedRoomType = roomsList[index].type ??
                                    RoomsTypeEnum.kitchen;
                              });
                            },
                            icon: Icon(
                              roomsList[index].icon,
                              size: 32.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Add your form fields here
                ElevatedButton(
                  onPressed: roomName != null &&
                          (roomName?.trim().isNotEmpty ?? false)
                      ? () {
                          if (roomName != null && roomName!.trim().isNotEmpty) {
                            BlocProvider.of<RoomsBloc>(context).add(
                              RoomsEvent.addRoom(
                                roomEntity: RoomEntity(
                                  name: roomName,
                                  type: selectedRoomType,
                                  icon: roomsList
                                      .firstWhere((element) =>
                                          element.type == selectedRoomType)
                                      .icon,
                                ),
                              ),
                            );
                            widget.onRoomAdded?.call(state);
                          }
                        }
                      : null,
                  child: const Text("Add Room"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
