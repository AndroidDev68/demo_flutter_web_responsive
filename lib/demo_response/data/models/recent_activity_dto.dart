class RecentActivityDto{
  int id;
  DateTime time;
  String title;
  String description;
  String todayActivityDescription;

//<editor-fold desc="Data Methods">

  RecentActivityDto({
    required this.id,
    required this.time,
    required this.title,
    required this.description,
    required this.todayActivityDescription,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecentActivityDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          time == other.time &&
          title == other.title &&
          description == other.description &&
          todayActivityDescription == other.todayActivityDescription);

  @override
  int get hashCode =>
      id.hashCode ^
      time.hashCode ^
      title.hashCode ^
      description.hashCode ^
      todayActivityDescription.hashCode;

  @override
  String toString() {
    return 'RecentActivityDto{' +
        ' id: $id,' +
        ' time: $time,' +
        ' title: $title,' +
        ' description: $description,' +
        ' todayActivityDescription: $todayActivityDescription,' +
        '}';
  }

  RecentActivityDto copyWith({
    int? id,
    DateTime? time,
    String? title,
    String? description,
    String? todayActivityDescription,
  }) {
    return RecentActivityDto(
      id: id ?? this.id,
      time: time ?? this.time,
      title: title ?? this.title,
      description: description ?? this.description,
      todayActivityDescription:
          todayActivityDescription ?? this.todayActivityDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'time': this.time,
      'title': this.title,
      'description': this.description,
      'todayActivityDescription': this.todayActivityDescription,
    };
  }

  factory RecentActivityDto.fromMap(Map<String, dynamic> map) {
    return RecentActivityDto(
      id: map['id'] as int,
      time: map['time'] as DateTime,
      title: map['title'] as String,
      description: map['description'] as String,
      todayActivityDescription: map['todayActivityDescription'] as String,
    );
  }

//</editor-fold>
}