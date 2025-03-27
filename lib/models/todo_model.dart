import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
class ToDo with _$ToDo {
  const factory ToDo(
    int id,
    String description,
    bool isCompleted,
  ) = _ToDo;
}

@freezed
class ToDoCopyWith with _$ToDoCopyWith {
  const factory ToDoCopyWith(int id, String description, bool isCompleted) =
      _ToDoCopyWith;
  factory ToDoCopyWith.fromJson(Map<String, dynamic> json) =>
      _$ToDoCopyWithFromJson(json);
}
