class Todo{
  String description;
  bool isComplete;

//<editor-fold desc="Data Methods">

  Todo({
    required this.description,
    required this.isComplete,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          runtimeType == other.runtimeType &&
          description == other.description &&
          isComplete == other.isComplete);

  @override
  int get hashCode => description.hashCode ^ isComplete.hashCode;

  @override
  String toString() {
    return 'Todo{' +
        ' description: $description,' +
        ' isComplete: $isComplete,' +
        '}';
  }

  Todo copyWith({
    String? description,
    bool? isComplete,
  }) {
    return Todo(
      description: description ?? this.description,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': this.description,
      'isComplete': this.isComplete,
    };
  }

  factory Todo.fromMap(Map<String, dynamic> map) {
    return Todo(
      description: map['description'] as String,
      isComplete: map['isComplete'] as bool,
    );
  }

//</editor-fold>
}