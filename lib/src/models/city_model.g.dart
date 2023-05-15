// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CityModel _$$_CityModelFromJson(Map<String, dynamic> json) => _$_CityModel(
      label: json['label'] as String,
      id: json['id'] as int,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryGroupModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CityModelToJson(_$_CityModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'id': instance.id,
      'categories': instance.categories,
    };
