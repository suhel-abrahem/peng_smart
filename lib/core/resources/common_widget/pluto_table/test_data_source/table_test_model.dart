class TableTestModel {
  final int id;
  final String name;
  final bool action;

  TableTestModel({
    required this.id,
    required this.name,
    required this.action,
  });

  TableTestModel copyWith({
    int? id,
    String? name,
    bool? action,
  }) {
    return TableTestModel(
      id: id ?? this.id,
      name: name ?? this.name,
      action: action ?? this.action,
    );
  }
}
