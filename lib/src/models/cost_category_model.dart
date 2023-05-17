import 'package:city_parser/src/models/category_element_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_category_model.freezed.dart';
part 'cost_category_model.g.dart';

@freezed
class CostCategoryModel with _$CostCategoryModel {
  const factory CostCategoryModel({
    required String label,
    required List<CategoryElementModel> elements,
  }) = _CostCategoryModel;

  factory CostCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CostCategoryModelFromJson(json);
}
