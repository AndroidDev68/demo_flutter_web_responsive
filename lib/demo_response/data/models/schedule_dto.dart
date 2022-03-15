class ScheduleDto{
  int id;
  String title;
  String time;

//<editor-fold desc="Data Methods">

  ScheduleDto({
    required this.id,
    required this.title,
    required this.time,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ScheduleDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          time == other.time);

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ time.hashCode;

  @override
  String toString() {
    return 'ScheduleDto{' +
        ' id: $id,' +
        ' title: $title,' +
        ' time: $time,' +
        '}';
  }

  ScheduleDto copyWith({
    int? id,
    String? title,
    String? time,
  }) {
    return ScheduleDto(
      id: id ?? this.id,
      title: title ?? this.title,
      time: time ?? this.time,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'time': this.time,
    };
  }

  factory ScheduleDto.fromMap(Map<String, dynamic> map) {
    return ScheduleDto(
      id: map['id'] as int,
      title: map['title'] as String,
      time: map['time'] as String,
    );
  }

//</editor-fold>
}
