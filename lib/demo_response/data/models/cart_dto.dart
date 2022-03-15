import 'package:flutter/material.dart';

class CartDto{
  int id;
  String title;
  int count;
  String description;
  Color color;
  Color descriptionColor;

//<editor-fold desc="Data Methods">

  CartDto({
    required this.id,
    required this.title,
    required this.count,
    required this.description,
    required this.color,
    required this.descriptionColor,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CartDto &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          count == other.count &&
          description == other.description &&
          color == other.color &&
          descriptionColor == other.descriptionColor);

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      count.hashCode ^
      description.hashCode ^
      color.hashCode ^
      descriptionColor.hashCode;

  @override
  String toString() {
    return 'CartDto{' +
        ' id: $id,' +
        ' title: $title,' +
        ' count: $count,' +
        ' description: $description,' +
        ' color: $color,' +
        ' descriptionColor: $descriptionColor,' +
        '}';
  }

  CartDto copyWith({
    int? id,
    String? title,
    int? count,
    String? description,
    Color? color,
    Color? descriptionColor,
  }) {
    return CartDto(
      id: id ?? this.id,
      title: title ?? this.title,
      count: count ?? this.count,
      description: description ?? this.description,
      color: color ?? this.color,
      descriptionColor: descriptionColor ?? this.descriptionColor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'title': this.title,
      'count': this.count,
      'description': this.description,
      'color': this.color,
      'descriptionColor': this.descriptionColor,
    };
  }

  factory CartDto.fromMap(Map<String, dynamic> map) {
    return CartDto(
      id: map['id'] as int,
      title: map['title'] as String,
      count: map['count'] as int,
      description: map['description'] as String,
      color: map['color'] as Color,
      descriptionColor: map['descriptionColor'] as Color,
    );
  }

//</editor-fold>
}