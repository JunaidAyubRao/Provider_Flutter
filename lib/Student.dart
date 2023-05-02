import 'dart:convert';

class Student {
  int rollNo;
  String name;
  Student({
    required this.rollNo,
    required this.name,
  });

  Student copyWith({
    int? rollNo,
    String? name,
  }) {
    return Student(
      rollNo: rollNo ?? this.rollNo,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollNo': rollNo,
      'name': name,
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      rollNo: map['rollNo'] as int,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Student(rollNo: $rollNo, name: $name)';

  @override
  bool operator ==(covariant Student other) {
    if (identical(this, other)) return true;

    return other.rollNo == rollNo && other.name == name;
  }

  @override
  int get hashCode => rollNo.hashCode ^ name.hashCode;
}
