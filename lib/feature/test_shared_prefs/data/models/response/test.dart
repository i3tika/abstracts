import 'package:json_annotation/json_annotation.dart';

part 'test.g.dart';

@JsonSerializable()
class CountCessionValue {
  String type;
  Data data;
  CountCessionValue({
    required this.type,
    required this.data,
  });

  factory CountCessionValue.fromJson(Map<String, dynamic> json) =>
      _$CountCessionValueFromJson(json);
}

@JsonSerializable()
class Data {
  double userGet;
  double commission;

  Data({
    required this.userGet,
    required this.commission,
  });
  factory Data.formJSom(Map<String, dynamic> json) => _$DataFromJson(json);



  static fromJson(Map<String, dynamic> json) {}

  
}
