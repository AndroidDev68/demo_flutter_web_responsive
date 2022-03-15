class UserDto{
  int id;
  String name;

//<editor-fold desc="Data Methods">

  UserDto({
    required this.id,
    required this.name,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name);

  @override
  int get hashCode => id.hashCode ^ name.hashCode;

  @override
  String toString() {
    return 'UserDto{' + ' id: $id,' + ' name: $name,' + '}';
  }

  UserDto copyWith({
    int? id,
    String? name,
  }) {
    return UserDto(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
    };
  }

  factory UserDto.fromMap(Map<String, dynamic> map) {
    return UserDto(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }

//</editor-fold>
}
