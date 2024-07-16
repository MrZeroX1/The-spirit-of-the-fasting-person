import 'dart:convert';

import 'package:collection/collection.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Prayer {
  final Map<dynamic, dynamic> prayers;
  Prayer({
    required this.prayers,
  });


  Prayer copyWith({
    Map<dynamic, String>? prayers,
  }) {
    return Prayer(
      prayers: prayers ?? this.prayers,
    );
  }

  Map<dynamic, dynamic> toMap() {
    return <dynamic, dynamic>{
      'prayers': prayers,
    };
  }

  factory Prayer.fromMap(Map<String, dynamic> map) {
    return Prayer(
      prayers: Map<String, String>.from((map)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Prayer.fromJson(String source) => Prayer.fromMap(json.decode(source) );

  @override
  String toString() => 'Prayer(prayers: $prayers)';

  @override
  bool operator ==(covariant Prayer other) {
    if (identical(this, other)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return
      mapEquals(other.prayers, prayers);
  }

  @override
  int get hashCode => prayers.hashCode;
}
