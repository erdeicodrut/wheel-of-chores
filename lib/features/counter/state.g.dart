// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CounterStateImpl _$$CounterStateImplFromJson(Map<String, dynamic> json) =>
    _$CounterStateImpl(
      count: json['count'] as int? ?? 0,
    );

const _$$CounterStateImplFieldMap = <String, String>{
  'count': 'count',
};

// ignore: unused_element
abstract class _$$CounterStateImplPerFieldToJson {
  // ignore: unused_element
  static Object? count(int instance) => instance;
}

Map<String, dynamic> _$$CounterStateImplToJson(_$CounterStateImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
