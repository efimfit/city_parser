// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryGroupModel _$$_CategoryGroupModelFromJson(
        Map<String, dynamic> json) =>
    _$_CategoryGroupModel(
      label: json['label'] as String,
      elements: (json['elements'] as List<dynamic>)
          .map((e) => CategoryElementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryGroupModelToJson(
        _$_CategoryGroupModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'elements': instance.elements,
    };
