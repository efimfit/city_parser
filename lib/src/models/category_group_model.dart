import 'package:city_parser/src/models/category_element_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_group_model.freezed.dart';

@freezed
class CategoryGroupModel with _$CategoryGroupModel {
  const factory CategoryGroupModel({
    required String label,
    required List<CategoryElementModel> elements,
  }) = _CategoryGroupModel;
}
