// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CostCategoryModel _$$_CostCategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CostCategoryModel(
      label: json['label'] as String,
      elements: (json['elements'] as List<dynamic>)
          .map((e) => CategoryElementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CostCategoryModelToJson(
        _$_CostCategoryModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'elements': instance.elements,
    };
