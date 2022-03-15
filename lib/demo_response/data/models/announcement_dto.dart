class AnnouncementDto{
  int id;
  String title;
  String time;

//<editor-fold desc="Data Methods">

  AnnouncementDto({
    required this.id,
    required this.title,
    required this.time,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AnnouncementDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          time == other.time);

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ time.hashCode;

  @override
  String toString() {
    return 'AnnouncementDto{' +
        ' id: $id,' +
        ' title: $title,' +
        ' time: $time,' +
        '}';
  }

  AnnouncementDto copyWith({
    int? id,
    String? title,
    String? time,
  }) {
    return AnnouncementDto(
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

  factory AnnouncementDto.fromMap(Map<String, dynamic> map) {
    return AnnouncementDto(
      id: map['id'] as int,
      title: map['title'] as String,
      time: map['time'] as String,
    );
  }

//</editor-fold>
}
