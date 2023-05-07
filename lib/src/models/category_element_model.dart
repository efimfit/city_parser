import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_element_model.freezed.dart';

@freezed
class CategoryElementModel with _$CategoryElementModel {
  const factory CategoryElementModel({
    required String label,
    required String value,
  }) = _CategoryElementModel;
}
