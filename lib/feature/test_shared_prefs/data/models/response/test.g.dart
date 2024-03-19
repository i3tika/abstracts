// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountCessionValue _$CountCessionValueFromJson(Map<String, dynamic> json) =>
    CountCessionValue(
      type: json['type'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountCessionValueToJson(CountCessionValue instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      userGet: (json['userGet'] as num).toDouble(),
      commission: (json['commission'] as num).toDouble(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'userGet': instance.userGet,
      'commission': instance.commission,
    };
