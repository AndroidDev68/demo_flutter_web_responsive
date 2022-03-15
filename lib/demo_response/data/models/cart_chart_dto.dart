class CartChartDto{
  int id;
  String title;
  int count;
  int men;
  int women;
  double percent;
  String description;

//<editor-fold desc="Data Methods">

  CartChartDto({
    required this.id,
    required this.title,
    required this.count,
    required this.men,
    required this.women,
    required this.percent,
    required this.description,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartChartDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          count == other.count &&
          men == other.men &&
          women == other.women &&
          percent == other.percent &&
          description == other.description);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      count.hashCode ^
      men.hashCode ^
      women.hashCode ^
      percent.hashCode ^
      description.hashCode;

  @override
  String toString() {
    return 'CartChartDto{' +
        ' id: $id,' +
        ' title: $title,' +
        ' count: $count,' +
        ' men: $men,' +
        ' women: $women,' +
        ' percent: $percent,' +
        ' description: $description,' +
        '}';
  }

  CartChartDto copyWith({
    int? id,
    String? title,
    int? count,
    int? men,
    int? women,
    double? percent,
    String? description,
  }) {
    return CartChartDto(
      id: id ?? this.id,
      title: title ?? this.title,
      count: count ?? this.count,
      men: men ?? this.men,
      women: women ?? this.women,
      percent: percent ?? this.percent,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'count': this.count,
      'men': this.men,
      'women': this.women,
      'percent': this.percent,
      'description': this.description,
    };
  }

  factory CartChartDto.fromMap(Map<String, dynamic> map) {
    return CartChartDto(
      id: map['id'] as int,
      title: map['title'] as String,
      count: map['count'] as int,
      men: map['men'] as int,
      women: map['women'] as int,
      percent: map['percent'] as double,
      description: map['description'] as String,
    );
  }

//</editor-fold>
}
