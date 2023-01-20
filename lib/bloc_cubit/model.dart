import 'package:equatable/equatable.dart';

class Person extends Equatable {
  String? name;
  int? age;

  Person({this.name = "abc", this.age = 17});

  @override
  List<Object?> get props => [age];
}
