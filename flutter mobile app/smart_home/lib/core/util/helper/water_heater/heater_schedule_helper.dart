class HeaterScheduleHelper {
  static int timeToMinutes(String time) {
    final parts = time.split(':');
    if (parts.length != 2) {
      throw Exception('Invalid time format: $time');
    }

    final hour = int.tryParse(parts[0]) ?? 0;
    final minute = int.tryParse(parts[1]) ?? 0;

    return hour * 60 + minute;
  }

  static String minutesToTime(int totalMinutes) {
    final normalized = totalMinutes % (24 * 60);
    final hour = normalized ~/ 60;
    final minute = normalized % 60;

    final hh = hour.toString().padLeft(2, '0');
    final mm = minute.toString().padLeft(2, '0');

    return '$hh:$mm';
  }
}
