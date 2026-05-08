import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_entity.freezed.dart';

@freezed
abstract class DayEntity with _$DayEntity {
  const factory DayEntity({
    @Default('') String name,
    @Default(false) bool selected,
  }) = _DayEntity;
}
